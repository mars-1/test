.class Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadCustomerAsyn;
.super Landroid/os/AsyncTask;
.source "MessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/fragment/MessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadCustomerAsyn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadCustomerAsyn;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadCustomerAsyn;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1053
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadCustomerAsyn;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadCustomerAsyn;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadCustomerAsyn;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mCustemInfoDB:Lcom/cnlaunch/newgolo/db/CustemInfoDB;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$13(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadCustomerAsyn;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->isFollowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadCustomerAsyn;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    const-string/jumbo v1, "followed"

    #setter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->customer_type:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$14(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Ljava/lang/String;)V

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadCustomerAsyn;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadCustomerAsyn;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mCustemInfoDB:Lcom/cnlaunch/newgolo/db/CustemInfoDB;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$13(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadCustomerAsyn;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getRequestId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->request_id:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$15(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Ljava/lang/String;)V

    .line 1061
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadCustomerAsyn;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadCustomerAsyn;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #calls: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->addViewToViewPager()V
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$16(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    .line 1067
    return-void
.end method
