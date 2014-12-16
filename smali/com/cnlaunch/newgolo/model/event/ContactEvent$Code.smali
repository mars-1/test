.class public final enum Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;
.super Ljava/lang/Enum;
.source "ContactEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/model/event/ContactEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

.field public static final enum createGroup:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

.field public static final enum deleteContact:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

.field public static final enum downloadface:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

.field public static final enum inviteMember:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

.field public static final enum kickMember:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

.field public static final enum modifyGroupName:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

.field public static final enum quitGroup:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

.field public static final enum relieveGroup:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

.field public static final enum saveGroup:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

.field public static final enum showface:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

.field public static final enum updateContactList:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

.field public static final enum updateFace:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

.field public static final enum updateGroupFace:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

.field public static final enum updateGroupList:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

.field public static final enum updateMemberList:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

.field public static final enum updatePublicList:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

.field public static final enum updateStatus:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    const-string/jumbo v1, "updateStatus"

    invoke-direct {v0, v1, v3}, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->updateStatus:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    .line 11
    new-instance v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    const-string/jumbo v1, "updateContactList"

    invoke-direct {v0, v1, v4}, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->updateContactList:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    .line 12
    new-instance v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    const-string/jumbo v1, "updateGroupList"

    invoke-direct {v0, v1, v5}, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->updateGroupList:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    .line 13
    new-instance v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    const-string/jumbo v1, "updateMemberList"

    invoke-direct {v0, v1, v6}, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->updateMemberList:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    .line 14
    new-instance v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    const-string/jumbo v1, "updatePublicList"

    invoke-direct {v0, v1, v7}, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->updatePublicList:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    .line 15
    new-instance v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    const-string/jumbo v1, "updateFace"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->updateFace:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    .line 16
    new-instance v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    const-string/jumbo v1, "updateGroupFace"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->updateGroupFace:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    .line 17
    new-instance v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    const-string/jumbo v1, "inviteMember"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->inviteMember:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    .line 18
    new-instance v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    const-string/jumbo v1, "createGroup"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->createGroup:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    .line 19
    new-instance v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    const-string/jumbo v1, "quitGroup"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->quitGroup:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    .line 20
    new-instance v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    const-string/jumbo v1, "relieveGroup"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->relieveGroup:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    .line 21
    new-instance v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    const-string/jumbo v1, "kickMember"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->kickMember:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    .line 22
    new-instance v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    const-string/jumbo v1, "saveGroup"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->saveGroup:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    .line 23
    new-instance v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    const-string/jumbo v1, "modifyGroupName"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->modifyGroupName:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    .line 24
    new-instance v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    const-string/jumbo v1, "deleteContact"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->deleteContact:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    .line 25
    new-instance v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    const-string/jumbo v1, "downloadface"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->downloadface:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    .line 26
    new-instance v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    const-string/jumbo v1, "showface"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->showface:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    .line 8
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    sget-object v1, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->updateStatus:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->updateContactList:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->updateGroupList:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->updateMemberList:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->updatePublicList:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->updateFace:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->updateGroupFace:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->inviteMember:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->createGroup:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->quitGroup:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->relieveGroup:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->kickMember:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->saveGroup:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->modifyGroupName:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->deleteContact:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->downloadface:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->showface:Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    aput-object v2, v0, v1

    sput-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->ENUM$VALUES:[Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    return-object v0
.end method

.method public static values()[Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;->ENUM$VALUES:[Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    array-length v1, v0

    new-array v2, v1, [Lcom/cnlaunch/newgolo/model/event/ContactEvent$Code;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
