.class public Lcom/cnlaunch/newgolo/data/dao/contact/Contact;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final RELATION_ADDED:Ljava/lang/String; = "7"

.field public static final RELATION_AGREE:Ljava/lang/String; = "5"

.field public static final RELATION_ASK:Ljava/lang/String; = "0"

.field public static final RELATION_BACKNAME:Ljava/lang/String; = "2"

.field public static final RELATION_FRIEND:Ljava/lang/String; = "1"

.field public static final RELATION_NOAGREE:Ljava/lang/String; = "4"

.field public static final RELATION_NODONE:Ljava/lang/String; = "3"

.field public static final RELATION_STRANGE:Ljava/lang/String; = "6"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private actor:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field private carLogo:Ljava/lang/String;

.field private carLogoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private carSeriesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private city:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private contactDetail:Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;

.field private distance:D

.field public ecode:I

.field private face_thumb:Ljava/lang/String;

.field private flag:Ljava/lang/String;

.field private greed:Ljava/lang/String;

.field private headView:Landroid/widget/ImageView;

.field private header_path:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private inGroup:Z

.field private lat:D

.field private lon:D

.field private msg:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field public notice:I

.field private ownerId:Ljava/lang/String;

.field private purikuraUrl:Ljava/lang/String;

.field private relation:Ljava/lang/String;

.field private remark:Ljava/lang/String;

.field private roles:I

.field private series:Ljava/lang/String;

.field private seriesName:Ljava/lang/String;

.field private seriesNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sex:I

.field public shield:I

.field private signature:Ljava/lang/String;

.field private sortKey:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->shield:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->notice:I

    .line 68
    iput-boolean v1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->inGroup:Z

    .line 15
    return-void
.end method


# virtual methods
.method public getActor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->actor:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCarLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->carLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getCarLogoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->carLogoList:Ljava/util/List;

    return-object v0
.end method

.method public getCarSeriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->carSeriesList:Ljava/util/List;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getContactDetail()Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->contactDetail:Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;

    return-object v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->distance:D

    return-wide v0
.end method

.method public getEcode()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->ecode:I

    return v0
.end method

.method public getFace_thumb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->face_thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getGreed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->greed:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->headView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getHeader_path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->header_path:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->lat:D

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->lon:D

    return-wide v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotice()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->notice:I

    return v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->ownerId:Ljava/lang/String;

    return-object v0
.end method

.method public getPurikuraUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->purikuraUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRelation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->relation:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getRoles()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->roles:I

    return v0
.end method

.method public getSeries()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->series:Ljava/lang/String;

    return-object v0
.end method

.method public getSeriesName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->seriesName:Ljava/lang/String;

    return-object v0
.end method

.method public getSeriesNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->seriesNameList:Ljava/util/List;

    return-object v0
.end method

.method public getSex()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->sex:I

    return v0
.end method

.method public getShield()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->shield:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->sortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isInGroup()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->inGroup:Z

    return v0
.end method

.method public setActor(Ljava/lang/String;)V
    .locals 0
    .parameter "actor"

    .prologue
    .line 401
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->actor:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 425
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->address:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public setCarLogo(Ljava/lang/String;)V
    .locals 0
    .parameter "carLogo"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->carLogo:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setCarLogoList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, carLogoList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->carLogoList:Ljava/util/List;

    .line 153
    return-void
.end method

.method public setCarSeriesList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, carSeriesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->carSeriesList:Ljava/util/List;

    .line 146
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 432
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->city:Ljava/lang/String;

    .line 433
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->code:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setContactDetail(Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;)V
    .locals 0
    .parameter "contactDetail"

    .prologue
    .line 393
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->contactDetail:Lcom/cnlaunch/newgolo/data/dao/contact/ContactDetail;

    .line 394
    return-void
.end method

.method public setDistance(D)V
    .locals 0
    .parameter "distance"

    .prologue
    .line 257
    iput-wide p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->distance:D

    .line 258
    return-void
.end method

.method public setEcode(I)V
    .locals 0
    .parameter "ecode"

    .prologue
    .line 49
    iput p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->ecode:I

    .line 50
    return-void
.end method

.method public setFace_thumb(Ljava/lang/String;)V
    .locals 0
    .parameter "face_thumb"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->face_thumb:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 409
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->flag:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public setGreed(Ljava/lang/String;)V
    .locals 0
    .parameter "greed"

    .prologue
    .line 417
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->greed:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public setHeadView(Landroid/widget/ImageView;)V
    .locals 0
    .parameter "headView"

    .prologue
    .line 385
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->headView:Landroid/widget/ImageView;

    .line 386
    return-void
.end method

.method public setHeader_path(Ljava/lang/String;)V
    .locals 0
    .parameter "header_path"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->header_path:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->id:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setInGroup(Z)V
    .locals 0
    .parameter "inGroup"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->inGroup:Z

    .line 76
    return-void
.end method

.method public setLat(D)V
    .locals 0
    .parameter "lat"

    .prologue
    .line 249
    iput-wide p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->lat:D

    .line 250
    return-void
.end method

.method public setLon(D)V
    .locals 0
    .parameter "lon"

    .prologue
    .line 241
    iput-wide p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->lon:D

    .line 242
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->msg:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->name:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .parameter "nickName"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->nickName:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setNotice(I)V
    .locals 0
    .parameter "notice"

    .prologue
    .line 65
    iput p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->notice:I

    .line 66
    return-void
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0
    .parameter "ownerId"

    .prologue
    .line 369
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->ownerId:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setPurikuraUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "purikuraUrl"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->purikuraUrl:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setRelation(Ljava/lang/String;)V
    .locals 0
    .parameter "relation"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->relation:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0
    .parameter "remark"

    .prologue
    .line 361
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->remark:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public setRoles(I)V
    .locals 0
    .parameter "roles"

    .prologue
    .line 440
    iput p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->roles:I

    .line 441
    return-void
.end method

.method public setSeries(Ljava/lang/String;)V
    .locals 0
    .parameter "series"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->series:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setSeriesName(Ljava/lang/String;)V
    .locals 0
    .parameter "seriesName"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->seriesName:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setSeriesNameList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, seriesNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->seriesNameList:Ljava/util/List;

    .line 130
    return-void
.end method

.method public setSex(I)V
    .locals 0
    .parameter "sex"

    .prologue
    .line 265
    iput p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->sex:I

    .line 266
    return-void
.end method

.method public setShield(I)V
    .locals 0
    .parameter "shield"

    .prologue
    .line 57
    iput p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->shield:I

    .line 58
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .parameter "signature"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->signature:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setSortKey(Ljava/lang/String;)V
    .locals 0
    .parameter "sortKey"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->sortKey:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 329
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/Contact;->type:Ljava/lang/String;

    .line 330
    return-void
.end method
