extends Player

export var Slipper_ang = [Vector2(1,1),Vector2(0,0),Vector2(-1,1)]

#親クラスの関数の呼び出し方法がGodotのバージョンで違うようなので、
#もし .～～()という部分にエラーが出たら.の前にsuperと書いてみてください

func _ready():
#	._ready()
	pass # Replace with function body.


func throw(slipper_ob:Object,force:float=throw_MaxForce,direction:Vector2=Vector2(1,0),curve:bool=false): #スリッパを投げる
	for i in range(Slipper_ang.size()):
		var dir_tmp = direction.normalized()+Slipper_ang[i].normalized()
		.throw(slipper_ob,force,(dir_tmp)) #もしこの部分にエラーが出たら . の前にsuperと書いてみてください
	pass


func Set_whether_left_player(left): #左プレイヤーかどうか設定
	.Set_whether_left_player(left) #もしこの部分にエラーが出たら . の前にsuperと書いてみてください
	return self

