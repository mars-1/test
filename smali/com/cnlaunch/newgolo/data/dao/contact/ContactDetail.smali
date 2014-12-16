.class public Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;
.super Ljava/lang/Object;
.source "ContactDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private birthday:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private continent:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private distance:F

.field private email:Ljava/lang/String;

.field private face_path_large:Ljava/lang/String;

.field private facebook:Ljava/lang/String;

.field private idTag:Ljava/lang/String;

.field private idTagList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private identity_tag:[Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private position:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private purikuraUrl:Ljava/lang/String;

.field private qq:Ljava/lang/String;

.field private set_face_time:Ljava/lang/String;

.field private sex:I

.field private time:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private twitter:Ljava/lang/String;

.field private user_name:Ljava/lang/String;

.field private weibo:Ljava/lang/String;

.field private work_unit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getContinent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->continent:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()F
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->distance:F

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFace_path_large()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->face_path_large:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->facebook:Ljava/lang/String;

    return-object v0
.end method

.method public getIdTag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->idTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->idTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->idTag:Ljava/lang/String;

    const-string/jumbo v2, "01"

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->getIdTagList()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v3, "01"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->idTag:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->idTag:Ljava/lang/String;

    const-string/jumbo v2, "02"

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->getIdTagList()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v3, "02"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->idTag:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->idTag:Ljava/lang/String;

    const-string/jumbo v2, "03"

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->getIdTagList()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v3, "03"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->idTag:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->idTag:Ljava/lang/String;

    const-string/jumbo v2, "04"

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->getIdTagList()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v3, "04"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->idTag:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->idTag:Ljava/lang/String;

    const-string/jumbo v2, "05"

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->getIdTagList()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v3, "05"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->idTag:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->idTag:Ljava/lang/String;

    const-string/jumbo v2, "06"

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->getIdTagList()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v3, "06"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->idTag:Ljava/lang/String;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->idTag:Ljava/lang/String;

    return-object v0
.end method

.method public getIdTagList()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, language:Ljava/lang/String;
    const-string/jumbo v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->initEnTagList()V

    .line 144
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->idTagList:Ljava/util/HashMap;

    return-object v1

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->initZhTagList()V

    goto :goto_0
.end method

.method public getIdentity_tag()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->identity_tag:[Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getPurikuraUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->purikuraUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getQq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public getSet_face_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->set_face_time:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->sex:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->twitter:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getWeibo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->weibo:Ljava/lang/String;

    return-object v0
.end method

.method public getWork_unit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->work_unit:Ljava/lang/String;

    return-object v0
.end method

.method public initEnTagList()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    .local v0, tagList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "01"

    const-string/jumbo v2, " valet driver"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string/jumbo v1, "02"

    const-string/jumbo v2, "rescue"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string/jumbo v1, "03"

    const-string/jumbo v2, "carpool"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string/jumbo v1, "04"

    const-string/jumbo v2, "rent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v1, "05"

    const-string/jumbo v2, "taxi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string/jumbo v1, "06"

    const-string/jumbo v2, "agency"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->idTagList:Ljava/util/HashMap;

    .line 136
    return-void
.end method

.method public initZhTagList()V
    .locals 3

    .prologue
    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v0, tagList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "01"

    const-string/jumbo v2, "\u4ee3\u9a7e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string/jumbo v1, "02"

    const-string/jumbo v2, "\u6551\u63f4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string/jumbo v1, "03"

    const-string/jumbo v2, "\u62fc\u8f66"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string/jumbo v1, "04"

    const-string/jumbo v2, "\u79df\u8f66"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string/jumbo v1, "05"

    const-string/jumbo v2, "\u7684\u58eb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string/jumbo v1, "06"

    const-string/jumbo v2, "\u4ee3\u529e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->idTagList:Ljava/util/HashMap;

    .line 126
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .parameter "birthday"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->birthday:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->city:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setContinent(Ljava/lang/String;)V
    .locals 0
    .parameter "continent"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->continent:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "country"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->country:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setDistance(F)V
    .locals 0
    .parameter "distance"

    .prologue
    .line 183
    iput p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->distance:F

    .line 184
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->email:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setFace_path_large(Ljava/lang/String;)V
    .locals 0
    .parameter "face_path_large"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->face_path_large:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public setFacebook(Ljava/lang/String;)V
    .locals 0
    .parameter "facebook"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->facebook:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setIdTag(Ljava/lang/String;)V
    .locals 0
    .parameter "idTag"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->idTag:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setIdentity_tag([Ljava/lang/String;)V
    .locals 0
    .parameter "identity_tag"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->identity_tag:[Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .parameter "mobile"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->mobile:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0
    .parameter "position"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->position:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .parameter "province"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->province:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public setPurikuraUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "purikuraUrl"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->purikuraUrl:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setQq(Ljava/lang/String;)V
    .locals 0
    .parameter "qq"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->qq:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setSet_face_time(Ljava/lang/String;)V
    .locals 0
    .parameter "set_face_time"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->set_face_time:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setSex(I)V
    .locals 0
    .parameter "sex"

    .prologue
    .line 264
    iput p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->sex:I

    .line 265
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->time:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->token:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setTwitter(Ljava/lang/String;)V
    .locals 0
    .parameter "twitter"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->twitter:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .locals 0
    .parameter "user_name"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->user_name:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setWeibo(Ljava/lang/String;)V
    .locals 0
    .parameter "weibo"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->weibo:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setWork_unit(Ljava/lang/String;)V
    .locals 0
    .parameter "work_unit"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;->work_unit:Ljava/lang/String;

    .line 166
    return-void
.end method
