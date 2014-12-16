.class Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;
.super Landroid/os/Handler;
.source "RegistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/login/RegistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    .line 150
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;)Lcom/cnlaunch/x431pro/activity/login/RegistActivity;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const v7, 0x7f0300f0

    .line 153
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 154
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 156
    :pswitch_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, items:[Ljava/lang/String;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_1

    .line 165
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$2(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 166
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$2(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->countryDisplay:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$1(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v4, v5, v7, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    #setter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->adapter:Landroid/widget/ArrayAdapter;
    invoke-static {v3, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$3(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Landroid/widget/ArrayAdapter;)V

    .line 167
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->spin_country:Landroid/widget/Spinner;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$4(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/Spinner;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->adapter:Landroid/widget/ArrayAdapter;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$5(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 168
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->adapter:Landroid/widget/ArrayAdapter;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$5(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    const v4, 0x7f030037

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    goto :goto_0

    .line 157
    :cond_1
    aget-object v1, v2, v3

    .line 158
    .local v1, item:Ljava/lang/String;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->listCountry:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$0(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 157
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 158
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/user/model/Country;

    .line 159
    .local v0, country:Lcom/cnlaunch/x431pro/module/user/model/Country;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getNcode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 160
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->countryDisplay:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$1(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/Country;->getDisplay()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 173
    .end local v0           #country:Lcom/cnlaunch/x431pro/module/user/model/Country;
    .end local v1           #item:Ljava/lang/String;
    .end local v2           #items:[Ljava/lang/String;
    :pswitch_1
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1$1;

    invoke-direct {v4, p0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1$1;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 199
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 202
    :pswitch_2
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->image_picture_identifycode:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$9(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$7(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 205
    :pswitch_3
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->promptDisplay:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$10(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 206
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->promptDisplay:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$10(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 207
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->promptDisplay:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$10(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07065a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_4
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$2(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$2(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->promptDisplay:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$10(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v4, v5, v7, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    #setter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->promptAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v3, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$11(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Landroid/widget/ArrayAdapter;)V

    .line 212
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->spin_country:Landroid/widget/Spinner;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$4(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/Spinner;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->promptAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$12(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto/16 :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
