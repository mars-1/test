.class public Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "PersonImformationModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5c54c82eadc21396L


# instance fields
.field private address:Ljava/lang/String;

.field private available_ele_skill:Ljava/lang/Object;

.field private city_code:Ljava/lang/String;

.field private city_name:Ljava/lang/String;

.field private country_code:Ljava/lang/String;

.field private country_name:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private expert_ele_skill:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/mine/model/ExpertEleSkill;",
            ">;"
        }
    .end annotation
.end field

.field private face:Ljava/lang/String;

.field private feedback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;",
            ">;"
        }
    .end annotation
.end field

.field private identity_tag:Ljava/lang/String;

.field private is_bind_email:Ljava/lang/String;

.field private is_bind_mobile:Ljava/lang/String;

.field private large_face:Ljava/lang/String;

.field private maintenance_leve:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private nick_name:Ljava/lang/String;

.field private now_role:Ljava/lang/String;

.field private office_phone:Ljava/lang/String;

.field private province_code:Ljava/lang/String;

.field private province_name:Ljava/lang/String;

.field private remark_name:Ljava/lang/String;

.field private roles:Ljava/lang/String;

.field private set_face_time:Ljava/lang/String;

.field private sex:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private user_id:Ljava/lang/String;

.field private user_name:Ljava/lang/String;

.field private work_unit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAvailable_ele_skill()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->available_ele_skill:Ljava/lang/Object;

    return-object v0
.end method

.method public getCity_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->city_code:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->city_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->country_code:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->country_name:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getExpert_ele_skill()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/mine/model/ExpertEleSkill;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->expert_ele_skill:Ljava/util/List;

    return-object v0
.end method

.method public getFace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->face:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedback()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->feedback:Ljava/util/List;

    return-object v0
.end method

.method public getIdentity_tag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->identity_tag:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_bind_email()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->is_bind_email:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_bind_mobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->is_bind_mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getLarge_face()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->large_face:Ljava/lang/String;

    return-object v0
.end method

.method public getMaintenance_leve()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->maintenance_leve:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getNick_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public getNow_role()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->now_role:Ljava/lang/String;

    return-object v0
.end method

.method public getOffice_phone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->office_phone:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->province_code:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->province_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->remark_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRoles()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->roles:Ljava/lang/String;

    return-object v0
.end method

.method public getSet_face_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->set_face_time:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getWork_unit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->work_unit:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->address:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setAvailable_ele_skill(Ljava/lang/Object;)V
    .locals 0
    .parameter "available_ele_skill"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->available_ele_skill:Ljava/lang/Object;

    .line 280
    return-void
.end method

.method public setCity_code(Ljava/lang/String;)V
    .locals 0
    .parameter "city_code"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->city_code:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setCity_name(Ljava/lang/String;)V
    .locals 0
    .parameter "city_name"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->city_name:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setCountry_code(Ljava/lang/String;)V
    .locals 0
    .parameter "country_code"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->country_code:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setCountry_name(Ljava/lang/String;)V
    .locals 0
    .parameter "country_name"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->country_name:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->email:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setExpert_ele_skill(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/mine/model/ExpertEleSkill;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, expert_ele_skill:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/mine/model/ExpertEleSkill;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->expert_ele_skill:Ljava/util/List;

    .line 288
    return-void
.end method

.method public setFace(Ljava/lang/String;)V
    .locals 0
    .parameter "face"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->face:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setFeedback(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, feedback:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/mine/model/FeedbackModel;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->feedback:Ljava/util/List;

    .line 296
    return-void
.end method

.method public setIdentity_tag(Ljava/lang/String;)V
    .locals 0
    .parameter "identity_tag"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->identity_tag:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setIs_bind_email(Ljava/lang/String;)V
    .locals 0
    .parameter "is_bind_email"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->is_bind_email:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setIs_bind_mobile(Ljava/lang/String;)V
    .locals 0
    .parameter "is_bind_mobile"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->is_bind_mobile:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setLarge_face(Ljava/lang/String;)V
    .locals 0
    .parameter "large_face"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->large_face:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setMaintenance_leve(Ljava/lang/String;)V
    .locals 0
    .parameter "maintenance_leve"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->maintenance_leve:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .parameter "mobile"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->mobile:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setNick_name(Ljava/lang/String;)V
    .locals 0
    .parameter "nick_name"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->nick_name:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setNow_role(Ljava/lang/String;)V
    .locals 0
    .parameter "now_role"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->now_role:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setOffice_phone(Ljava/lang/String;)V
    .locals 0
    .parameter "office_phone"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->office_phone:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setProvince_code(Ljava/lang/String;)V
    .locals 0
    .parameter "province_code"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->province_code:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setProvince_name(Ljava/lang/String;)V
    .locals 0
    .parameter "province_name"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->province_name:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setRemark_name(Ljava/lang/String;)V
    .locals 0
    .parameter "remark_name"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->remark_name:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setRoles(Ljava/lang/String;)V
    .locals 0
    .parameter "roles"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->roles:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setSet_face_time(Ljava/lang/String;)V
    .locals 0
    .parameter "set_face_time"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->set_face_time:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .locals 0
    .parameter "sex"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->sex:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .parameter "signature"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->signature:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0
    .parameter "user_id"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->user_id:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .locals 0
    .parameter "user_name"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->user_name:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setWork_unit(Ljava/lang/String;)V
    .locals 0
    .parameter "work_unit"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->work_unit:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PersonImformationModel [user_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", user_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nick_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->nick_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->sex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", set_face_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->set_face_time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", face="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->face:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", large_face="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->large_face:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", office_phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->office_phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", country_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->country_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    const-string/jumbo v1, ", province_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->province_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", city_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->city_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mobile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 303
    const-string/jumbo v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", is_bind_mobile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->is_bind_mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", is_bind_email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->is_bind_email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", city_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->city_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 304
    const-string/jumbo v1, ", country_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->country_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", province_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->province_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", identity_tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->identity_tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", roles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->roles:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", now_role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->now_role:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maintenance_leve="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->maintenance_leve:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", remark_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->remark_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", work_unit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->work_unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", available_ele_skill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->available_ele_skill:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", expert_ele_skill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->expert_ele_skill:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", feedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/mine/model/PersonImformationModel;->feedback:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
