.class Lcom/cnlaunch/x431pro/activity/help/IniEditor$Comment;
.super Ljava/lang/Object;
.source "IniEditor.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/activity/help/IniEditor$Line;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/help/IniEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Comment"
.end annotation


# static fields
.field private static final DEFAULT_DELIMITER:C = '#'


# instance fields
.field private comment:Ljava/lang/String;

.field private delimiter:C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "comment"

    .prologue
    .line 1086
    const/16 v0, 0x23

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Comment;-><init>(Ljava/lang/String;C)V

    .line 1087
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 1
    .parameter "comment"
    .parameter "delimiter"

    .prologue
    .line 1089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1090
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Comment;->comment:Ljava/lang/String;

    .line 1091
    iput-char p2, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Comment;->delimiter:C

    .line 1092
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Comment;->delimiter:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/IniEditor$Comment;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
