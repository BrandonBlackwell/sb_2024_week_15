#include <catch2/catch_test_macros.hpp>

#include <iomanip>
#include <iostream>

using namespace std;

class Tracker
{
  public:
    Tracker ()
    { sm_N_default_ctors++; }

    Tracker (Tracker const &)
    { sm_N_copy_ctors++; }
    Tracker (Tracker &&) noexcept
    { sm_N_move_ctors++; }

    Tracker & operator= ([[maybe_unused]] Tracker const & orig)
    { sm_N_copy_assigns++; return *this; }
    Tracker & operator= ([[maybe_unused]] Tracker && orig) noexcept
    { sm_N_move_assigns++; return *this; }

    ~Tracker ()
    { sm_N_dtors++; }

  public:
    static void reset_counts ()
    {
      sm_N_default_ctors = 0;
      sm_N_copy_ctors    = 0;
      sm_N_move_ctors    = 0;
      sm_N_copy_assigns  = 0;
      sm_N_move_assigns  = 0;
      sm_N_dtors         = 0;
    }

  public:
    static int32_t sm_N_default_ctors;
    static int32_t sm_N_copy_ctors;
    static int32_t sm_N_move_ctors;
    static int32_t sm_N_copy_assigns;
    static int32_t sm_N_move_assigns;
    static int32_t sm_N_dtors;
};

int32_t Tracker::sm_N_default_ctors = 0;
int32_t Tracker::sm_N_copy_ctors    = 0;
int32_t Tracker::sm_N_move_ctors    = 0;
int32_t Tracker::sm_N_copy_assigns  = 0;
int32_t Tracker::sm_N_move_assigns  = 0;
int32_t Tracker::sm_N_dtors         = 0;

TEST_CASE("lifecycle events")
{
  Tracker::reset_counts();

  SECTION("scenario 1")
  {
    Tracker t_1;

    CHECK(Tracker::sm_N_default_ctors == 1); // The default constructor was called which increases the sm_N_default_ctors static variable.
    CHECK(Tracker::sm_N_copy_ctors    == 0); // This will remain 0 because the t_1 object is being default constructed.
    CHECK(Tracker::sm_N_move_ctors    == 0); // This static varible will not be increased because the move constructor hasn't been called.
    CHECK(Tracker::sm_N_copy_assigns  == 0); // This static varible will not be increased because the copy assignment operator hasn't been called.
    CHECK(Tracker::sm_N_move_assigns  == 0); // This static varible will not be increased because the move assignment operator hasn't been called.
    CHECK(Tracker::sm_N_dtors         == 0); // This static variable will not be increased because the t_1 object is still in scope so the destructor has not been called yet.
  }

  SECTION("scenario 2")
  {
    {
      Tracker t_1;
      Tracker t_2 = t_1;
    }

    CHECK(Tracker::sm_N_default_ctors == 1); // Since this is a static variable I thought that the counts would carry over from the previous section but, there is a reset_count function being called before each section runs. The defualt constructor is being called once which increases the count to 1.
    CHECK(Tracker::sm_N_copy_ctors    == 1); // This static variable will be increased to 1 because we are constructing a Tracker object from an already initialized object hence why the copy constructing is called.
    CHECK(Tracker::sm_N_move_ctors    == 0); // The move constructor is not being called in this scenario so, this static variable will remain 0.
    CHECK(Tracker::sm_N_copy_assigns  == 0); // Copy assign is not being used in this scenario so, this static variable will remain 0.
    CHECK(Tracker::sm_N_move_assigns  == 0); // Move assign is not being used in this scenario so, this static variable will remain 0.
    CHECK(Tracker::sm_N_dtors         == 2); // Since there are two tracker objects and a scope has been added, the destructor will be called twice which increases this static variable to 2.
  }

  SECTION("scenario 3")
  {
    {
      Tracker t_1 = Tracker();
      Tracker t_2(t_1);
    }

    CHECK(Tracker::sm_N_default_ctors == 1); // The count will be 1 because this is just another way to default construct an object.
    CHECK(Tracker::sm_N_copy_ctors    == 1); // The t_2 object is being copy constructed which increases the count to 1. This is also another way to copy construct objects. 
    CHECK(Tracker::sm_N_move_ctors    == 0); // The move constructor is not being called in this scenario.
    CHECK(Tracker::sm_N_copy_assigns  == 0); // The copy assignment operator isn't being used in this scenario so, the count will remain 0.
    CHECK(Tracker::sm_N_move_assigns  == 0); // The move assignment operator isn't being used in this scenario so, the count will remain 0.
    CHECK(Tracker::sm_N_dtors         == 2); // Both tracker objects will be deconstructed when the program reaches the end of scope braces for this section which increases the count to 2.
  }

  SECTION("scenario 4")
  {
    {
      Tracker t_1;
      Tracker t_2 = std::move(t_1);
      t_1 = Tracker();
    }

    CHECK(Tracker::sm_N_default_ctors == 2); // The default constructor will be called when creating the t_1 object and when constructing a tracker object without a variable.
    CHECK(Tracker::sm_N_copy_ctors    == 0); // FIX THIS AND EXPLAIN WHY
    CHECK(Tracker::sm_N_move_ctors    == 1); // t_2 is being constructed using the move constructor which increases the count by 1.
    CHECK(Tracker::sm_N_copy_assigns  == 0); // FIX THIS AND EXPLAIN WHY
    CHECK(Tracker::sm_N_move_assigns  == 1); // The move assignment operator will be called once in this scenario due to compiler optimizations. Struggled with understanding this one.
    CHECK(Tracker::sm_N_dtors         == 3); // t_1, t_2, and the Tracker object without a variable name will be destroyed which will increase the count to 3.
  }

  SECTION("scenario 5")
  {
    {
      Tracker t_1 = Tracker();
      Tracker t_2 = std::move(t_1);
      Tracker t_3 = t_1;
    }

    CHECK(Tracker::sm_N_default_ctors == 1); // t_1 gets default constructed which increases this count to 1.
    CHECK(Tracker::sm_N_copy_ctors    == 1); // t_3 is being copy constructed from t_1.
    CHECK(Tracker::sm_N_move_ctors    == 1); // t_2 is being constructed by stealing the contents of t_1 which means that the move constructor will be called.
    CHECK(Tracker::sm_N_copy_assigns  == 0); // FIX THIS AND EXPLAIN WHY
    CHECK(Tracker::sm_N_move_assigns  == 0); // FIX THIS AND EXPLAIN WHY
    CHECK(Tracker::sm_N_dtors         == 3); // All three tracker objects get destroyed once program execution hits the end of scope braces.
  }

  SECTION("scenario 6")
  {
    {
      Tracker t_1 = Tracker();
      Tracker t_2 = t_1;
      t_2 = std::move(t_1);
    }

    CHECK(Tracker::sm_N_default_ctors == 1); // Default constructor constructs t_1 which increases this count by 1.
    CHECK(Tracker::sm_N_copy_ctors    == 1); // t_2 is being copy constructed from t_1 so the copy constructor gets called and this count increases by 1.
    CHECK(Tracker::sm_N_move_ctors    == 0); // FIX THIS AND EXPLAIN WHY
    CHECK(Tracker::sm_N_copy_assigns  == 0); // FIX THIS AND EXPLAIN WHY
    CHECK(Tracker::sm_N_move_assigns  == 1); // The move assignment operator gets used in this scenario because both t_1 and t_2 are already constructed and std::move is called which increases this count by 1.
    CHECK(Tracker::sm_N_dtors         == 2); // Both tracker objects get destroyed once program execution hits the end of scope braces which increases this count by 2.
  }
}


