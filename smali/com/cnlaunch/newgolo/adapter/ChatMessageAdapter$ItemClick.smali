.class Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;
.super Ljava/lang/Object;
.source "ChatMessageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemClick"
.end annotation


# static fields
.field public static final TYPE_ENTITY:I = 0x1

.field public static final TYPE_ENTITY_LONGCLICK:I = 0x5

.field public static final TYPE_ERROR:I = 0x3

.field public static final TYPE_HEAD:I = 0x2

.field public static final TYPE_MENU:I = 0x4


# instance fields
.field private mButtonId:I

.field private mPosition:I

.field private mType:I

.field final synthetic this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;III)V
    .locals 0
    .parameter
    .parameter "position"
    .parameter "type"
    .parameter "buttonId"

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    iput p2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->mPosition:I

    .line 1039
    iput p3, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->mType:I

    .line 1040
    iput p4, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->mButtonId:I

    .line 1041
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1045
    iget v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 1069
    :cond_0
    :goto_0
    return-void

    .line 1047
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mItemEntityClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemEntityClick;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->access$0(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemEntityClick;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mItemEntityClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemEntityClick;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->access$0(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemEntityClick;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->mPosition:I

    invoke-interface {v0, v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemEntityClick;->onClick(I)V

    goto :goto_0

    .line 1052
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mItemHeadClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemHeadClick;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->access$1(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemHeadClick;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mItemHeadClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemHeadClick;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->access$1(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemHeadClick;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->mPosition:I

    invoke-interface {v0, v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemHeadClick;->onClick(I)V

    goto :goto_0

    .line 1057
    :pswitch_2
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mItemErrorClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemErrorClick;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->access$2(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemErrorClick;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mItemErrorClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemErrorClick;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->access$2(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemErrorClick;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->mPosition:I

    invoke-interface {v0, v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemErrorClick;->onClick(I)V

    goto :goto_0

    .line 1062
    :pswitch_3
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mItemMenuClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemMenuClick;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->access$3(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemMenuClick;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mItemMenuClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemMenuClick;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->access$3(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemMenuClick;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->mPosition:I

    iget v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->mButtonId:I

    invoke-interface {v0, v1, v2}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemMenuClick;->onClick(II)V

    goto :goto_0

    .line 1045
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 1073
    iget v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 1084
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1075
    :pswitch_0
    const-string/jumbo v0, "ChatMessageAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLongClick:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mItemLongClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemLongClick;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->access$4(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemLongClick;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1077
    const-string/jumbo v0, "ChatMessageAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mItemLongClick != null:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mItemLongClick:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemLongClick;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->access$4(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemLongClick;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemClick;->mPosition:I

    invoke-interface {v0, v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemLongClick;->onLongClick(I)V

    goto :goto_0

    .line 1073
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
