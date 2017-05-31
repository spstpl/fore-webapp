json.data do
    json.course  do
        json.id @course.id 
        json.name @course.name
        json.course_type @course.course_type
        json.bio @course.bio
        json.website @course.website
        json.phone_num @course.phone_num
        json.total_par @course.total_par
        json.slope @course.slope
        json.rating @course.rating
        json.length @course.length
        json.created_at @course.created_at
        json.updated_at @course.updated_at
        json.location @course.location , :town, :state, :lat, :lng, :created_at, :updated_at
        json.amenities @course.try(:amenity) , :restaurants, :caddies, :carts, :created_at, :updated_at if @course.try(:amenity) 
        json.holes @course.holes do |hole|
            json.id hole.id
            json.number hole.hole_num
            json.par hole.par
            json.yards hole.yards
            json.mhcp hole.mhcp
            json.whcp hole.whcp
            json.video_url hole.video.try(:video).try(:url)
            json.created_at hole.created_at
            json.updated_at hole.updated_at
        end
        json.score_cards @course.score_cards do |sc|
            json.tee_name sc.tee_name
            json.color sc.color
            json.created_at sc.created_at
            json.updated_at sc.updated_at
        end

    end
end