AddEvent("OnKeyPress", function(key)
    if key == "G" and not then
        CallRemoteEvent("DropGun")
    elseif
        key == "E" and not then
            CallRemoteEvent("PickupGun")       
    end
end)

AddEvent("OnObjectStreamIn", function(object)
	if IsValidObject(object) and GetObjectPropertyValue(object, "collision") == false then
		GetObjectActor(object):SetActorEnableCollision(false)
	end
end)

AddRemoteEvent("GetClientObjects", function()
	CallRemoteEvent("ReturnedObjects", GetStreamedObjects(false))
	CallRemoteEvent("ReturnedObjects", GetStreamedObjects(false))
end)

