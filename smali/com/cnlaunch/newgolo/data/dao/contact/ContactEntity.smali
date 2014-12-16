.class public Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;
.super Ljava/lang/Object;
.source "ContactEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public contact_id:Ljava/lang/String;

.field public contact_name:Ljava/lang/String;

.field public message_id:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public notice:I

.field public ower_id:Ljava/lang/String;

.field public purikuraUrl:Ljava/lang/String;

.field public relation:Ljava/lang/String;

.field public remark:Ljava/lang/String;

.field public shield:I

.field public signature:Ljava/lang/String;

.field public top_set:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->shield:I

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->notice:I

    .line 41
    iput v1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->top_set:I

    .line 79
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->relation:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getContact_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->contact_id:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->contact_name:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->message_id:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getNotice()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->notice:I

    return v0
.end method

.method public getOwer_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->ower_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPurikuraUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->purikuraUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRelation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->relation:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getShield()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->shield:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTop_set()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->top_set:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->type:I

    return v0
.end method

.method public setContact_id(Ljava/lang/String;)V
    .locals 0
    .parameter "contact_id"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->contact_id:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setContact_name(Ljava/lang/String;)V
    .locals 0
    .parameter "contact_name"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->contact_name:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setMessage_id(Ljava/lang/String;)V
    .locals 0
    .parameter "message_id"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->message_id:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->nickname:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setNotice(I)V
    .locals 0
    .parameter "notice"

    .prologue
    .line 57
    iput p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->notice:I

    .line 58
    return-void
.end method

.method public setOwer_id(Ljava/lang/String;)V
    .locals 0
    .parameter "ower_id"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->ower_id:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setPurikuraUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "purikuraUrl"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->purikuraUrl:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setRelation(Ljava/lang/String;)V
    .locals 0
    .parameter "relation"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->relation:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0
    .parameter "remark"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->remark:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setShield(I)V
    .locals 0
    .parameter "shield"

    .prologue
    .line 49
    iput p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->shield:I

    .line 50
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .parameter "signature"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->signature:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setTop_set(I)V
    .locals 0
    .parameter "top_set"

    .prologue
    .line 65
    iput p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->top_set:I

    .line 66
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 131
    iput p1, p0, Lcom/cnlaunch/newgolo/data/dao/contact/ContactEntity;->type:I

    .line 132
    return-void
.end method
