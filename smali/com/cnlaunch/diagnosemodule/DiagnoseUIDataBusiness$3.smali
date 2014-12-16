.class Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$3;
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

.field private final synthetic val$tempType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$3;->this$0:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    iput-object p2, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$3;->val$tempType:Ljava/lang/String;

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 642
    :try_start_0
    const-string/jumbo v2, "0"

    .line 643
    .local v2, inputValue:Ljava/lang/String;
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$3;->this$0:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    #getter for: Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->mInputAfterMask:Z
    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->access$3(Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 644
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 645
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$3;->this$0:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$3;->val$tempType:Ljava/lang/String;

    #calls: Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v2}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->access$1(Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "mShowing"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 647
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 648
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #inputValue:Ljava/lang/String;
    :goto_0
    return-void

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
