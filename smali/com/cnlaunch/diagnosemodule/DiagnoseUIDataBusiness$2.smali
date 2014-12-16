.class Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$2;
.super Ljava/lang/Object;
.source "DiagnoseUIDataBusiness.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->jsonUIInputDialog(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

.field private final synthetic val$inputServer:Landroid/widget/EditText;

.field private final synthetic val$tempType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$2;->this$0:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    iput-object p2, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$2;->val$inputServer:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$2;->val$tempType:Ljava/lang/String;

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 618
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$2;->val$inputServer:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, inputValue:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "mShowing"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 621
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 622
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 623
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$2;->this$0:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    #getter for: Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->access$2(Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/cnlaunch/diagnosemodule/R$string;->dialog_input_no_null:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 624
    const-string/jumbo v2, "0"

    .line 625
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 635
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 627
    .restart local v1       #field:Ljava/lang/reflect/Field;
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$2;->this$0:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    #getter for: Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mInputAfterMask:Z
    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->access$3(Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 628
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "1"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 629
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$2;->this$0:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$2;->val$tempType:Ljava/lang/String;

    #calls: Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v2}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->access$1(Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 632
    .end local v1           #field:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 633
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
