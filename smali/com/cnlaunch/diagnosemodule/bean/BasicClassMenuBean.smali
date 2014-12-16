.class public Lcom/cnlaunch/diagnosemodule/bean/BasicClassMenuBean;
.super Ljava/lang/Object;
.source "BasicClassMenuBean.java"


# instance fields
.field firstItem:I

.field help:Ljava/lang/String;

.field menuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;",
            ">;"
        }
    .end annotation
.end field

.field title:Ljava/lang/String;

.field ui_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstItem()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicClassMenuBean;->firstItem:I

    return v0
.end method

.method public getHelp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicClassMenuBean;->help:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicClassMenuBean;->menuList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicClassMenuBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUi_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicClassMenuBean;->ui_type:Ljava/lang/String;

    return-object v0
.end method

.method public setFirstItem(I)V
    .locals 0
    .parameter "firstItem"

    .prologue
    .line 34
    iput p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicClassMenuBean;->firstItem:I

    .line 35
    return-void
.end method

.method public setHelp(Ljava/lang/String;)V
    .locals 0
    .parameter "help"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicClassMenuBean;->help:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setMenuList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, menuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;>;"
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicClassMenuBean;->menuList:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicClassMenuBean;->title:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setUi_type(Ljava/lang/String;)V
    .locals 0
    .parameter "ui_type"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicClassMenuBean;->ui_type:Ljava/lang/String;

    .line 17
    return-void
.end method
