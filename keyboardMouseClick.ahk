; RCtrl:: {
;     Send "{RButton Down}"     ; 触发右键按下状态[1,3](@ref)
;     try {
;         KeyWait "RCtrl", "L"   ; "L"参数确保仅响应物理按键释放[2](@ref)
;     } catch as e {
;         Send "{RButton Up}"   ; 异常处理防止按键状态残留
;     }
;     Send "{RButton Up}"       ; 同步释放右键状态
; }

RCtrl:: {
    Send "{Shift Down}{F10}"  ; 同时触发 Shift 按下和 F10 按键[1,3](@ref)
    try {
        KeyWait "RCtrl", "L"       ; 等待右Ctrl 物理按键释放[2](@ref)
    } catch as e {
        Send "{Shift Up}"    ; 异常处理防止按键状态残留
    }
    Send "{Shift Up}"         ; 立即释放 Shift 键
}

RAlt:: {
    Send "{LButton Down}"     ; 触发右键按下状态[1,3](@ref)
    try {
        KeyWait "RAlt", "L"   ; "L"参数确保仅响应物理按键释放[2](@ref)
    } catch as e {
        Send "{LButton Up}"   ; 异常处理防止按键状态残留
    }
    Send "{LButton Up}"       ; 同步释放右键状态
}
