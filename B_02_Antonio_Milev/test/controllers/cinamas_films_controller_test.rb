require 'test_helper'

class CinamasFilmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cinamas_film = cinamas_films(:one)
  end

  test "should get index" do
    get cinamas_films_url
    assert_response :success
  end

  test "should get new" do
    get new_cinamas_film_url
    assert_response :success
  end

  test "should create cinamas_film" do
    assert_difference('CinamasFilm.count') do
      post cinamas_films_url, params: { cinamas_film: { cinema_id: @cinamas_film.cinema_id, film_id: @cinamas_film.film_id } }
    end

    assert_redirected_to cinamas_film_url(CinamasFilm.last)
  end

  test "should show cinamas_film" do
    get cinamas_film_url(@cinamas_film)
    assert_response :success
  end

  test "should get edit" do
    get edit_cinamas_film_url(@cinamas_film)
    assert_response :success
  end

  test "should update cinamas_film" do
    patch cinamas_film_url(@cinamas_film), params: { cinamas_film: { cinema_id: @cinamas_film.cinema_id, film_id: @cinamas_film.film_id } }
    assert_redirected_to cinamas_film_url(@cinamas_film)
  end

  test "should destroy cinamas_film" do
    assert_difference('CinamasFilm.count', -1) do
      delete cinamas_film_url(@cinamas_film)
    end

    assert_redirected_to cinamas_films_url
  end
end
