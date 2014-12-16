.class Lcom/cnlaunch/x431pro/activity/MainActivity$6$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/MainActivity$6;->onChange(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/x431pro/activity/MainActivity$6;

.field private final synthetic val$o:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/MainActivity$6;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$6$1;->this$1:Lcom/cnlaunch/x431pro/activity/MainActivity$6;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$6$1;->val$o:Ljava/lang/Object;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const v9, 0x7f02051e

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 432
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$6$1;->val$o:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gtz v8, :cond_0

    .line 433
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$6$1;->this$1:Lcom/cnlaunch/x431pro/activity/MainActivity$6;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/MainActivity$6;->access$0(Lcom/cnlaunch/x431pro/activity/MainActivity$6;)Lcom/cnlaunch/x431pro/activity/MainActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 434
    .local v2, drawableL:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 435
    .local v6, rightL:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 436
    .local v0, bottomL:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v10, v10, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 437
    .local v4, rectL:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$6$1;->this$1:Lcom/cnlaunch/x431pro/activity/MainActivity$6;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/MainActivity$6;->access$0(Lcom/cnlaunch/x431pro/activity/MainActivity$6;)Lcom/cnlaunch/x431pro/activity/MainActivity;

    move-result-object v8

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$0(Lcom/cnlaunch/x431pro/activity/MainActivity;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "rightL:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "bottomL:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 439
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$6$1;->this$1:Lcom/cnlaunch/x431pro/activity/MainActivity$6;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/MainActivity$6;->access$0(Lcom/cnlaunch/x431pro/activity/MainActivity$6;)Lcom/cnlaunch/x431pro/activity/MainActivity;

    move-result-object v8

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->radioGolo:Landroid/widget/RadioButton;
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$5(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/widget/RadioButton;

    move-result-object v8

    invoke-virtual {v8, v2, v11, v11, v11}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 454
    :goto_0
    return-void

    .line 441
    .end local v0           #bottomL:I
    .end local v2           #drawableL:Landroid/graphics/drawable/Drawable;
    .end local v4           #rectL:Landroid/graphics/Rect;
    .end local v6           #rightL:I
    :cond_0
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$6$1;->this$1:Lcom/cnlaunch/x431pro/activity/MainActivity$6;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/MainActivity$6;->access$0(Lcom/cnlaunch/x431pro/activity/MainActivity$6;)Lcom/cnlaunch/x431pro/activity/MainActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 442
    .restart local v2       #drawableL:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 443
    .restart local v6       #rightL:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 444
    .restart local v0       #bottomL:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v10, v10, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 445
    .restart local v4       #rectL:Landroid/graphics/Rect;
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 446
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$6$1;->this$1:Lcom/cnlaunch/x431pro/activity/MainActivity$6;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/MainActivity$6;->access$0(Lcom/cnlaunch/x431pro/activity/MainActivity$6;)Lcom/cnlaunch/x431pro/activity/MainActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020458

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 447
    .local v3, drawableR:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$6$1;->this$1:Lcom/cnlaunch/x431pro/activity/MainActivity$6;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/MainActivity$6;->access$0(Lcom/cnlaunch/x431pro/activity/MainActivity$6;)Lcom/cnlaunch/x431pro/activity/MainActivity;

    move-result-object v8

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0070

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v7, v8

    .line 448
    .local v7, rightR:I
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$6$1;->this$1:Lcom/cnlaunch/x431pro/activity/MainActivity$6;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/MainActivity$6;->access$0(Lcom/cnlaunch/x431pro/activity/MainActivity$6;)Lcom/cnlaunch/x431pro/activity/MainActivity;

    move-result-object v8

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b006f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v1, v8

    .line 449
    .local v1, bottomR:I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v10, v10, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 450
    .local v5, rectR:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$6$1;->this$1:Lcom/cnlaunch/x431pro/activity/MainActivity$6;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/MainActivity$6;->access$0(Lcom/cnlaunch/x431pro/activity/MainActivity$6;)Lcom/cnlaunch/x431pro/activity/MainActivity;

    move-result-object v8

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$0(Lcom/cnlaunch/x431pro/activity/MainActivity;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "rightR:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "bottomR:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 452
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/MainActivity$6$1;->this$1:Lcom/cnlaunch/x431pro/activity/MainActivity$6;

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/MainActivity;
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/MainActivity$6;->access$0(Lcom/cnlaunch/x431pro/activity/MainActivity$6;)Lcom/cnlaunch/x431pro/activity/MainActivity;

    move-result-object v8

    #getter for: Lcom/cnlaunch/x431pro/activity/MainActivity;->radioGolo:Landroid/widget/RadioButton;
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/MainActivity;->access$5(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/widget/RadioButton;

    move-result-object v8

    invoke-virtual {v8, v2, v11, v3, v11}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method
