local m_speed=4

function start()

end

function update()
    local movev=0
    local moveh=0
    if CS.UnityEngine.Input.GetKey(CS.UnityEngine.KeyCode.UpArrow) then
        movev = movev-m_speed*CS.UnityEngine.Time.deltaTime
    end
    if CS.UnityEngine.Input.GetKey(CS.UnityEngine.KeyCode.DownArrow) then
        movev = movev+m_speed*CS.UnityEngine.Time.deltaTime
    end

    if CS.UnityEngine.Input.GetKey(CS.UnityEngine.KeyCode.LeftArrow) then
        moveh = moveh+m_speed*CS.UnityEngine.Time.deltaTime
    end

    if CS.UnityEngine.Input.GetKey(CS.UnityEngine.KeyCode.RightArrow) then
        moveh = moveh-m_speed*CS.UnityEngine.Time.deltaTime
    end
    self.transform:Translate(CS.UnityEngine.Vector3(moveh,0,movev))
end

function ondestroy()

end