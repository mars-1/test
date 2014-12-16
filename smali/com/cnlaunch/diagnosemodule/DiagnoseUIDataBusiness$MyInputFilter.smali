.class Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$MyInputFilter;
.super Ljava/lang/Object;
.source "DiagnoseUIDataBusiness.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyInputFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;


# direct methods
.method constructor <init>(Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;)V
    .locals 0
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$MyInputFilter;->this$0:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, after:Ljava/lang/String;
    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$MyInputFilter;->this$0:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    #getter for: Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->strReg:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->access$0(Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 571
    .local v1, b:Z
    if-eqz v1, :cond_0

    .line 574
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    const-string/jumbo p1, ""

    goto :goto_0
.end method
