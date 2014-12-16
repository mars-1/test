.class public Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSitesList;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "BrowserWebSitesList.java"


# static fields
.field private static final serialVersionUID:J = 0x4a73653f13286ce1L


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x7f02061e

    .line 16
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSitesList;->list:Ljava/util/ArrayList;

    .line 18
    const/4 v0, 0x0

    .line 20
    .local v0, infoTemp:Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;
    new-instance v0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;

    .end local v0           #infoTemp:Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;
    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;-><init>()V

    .line 21
    .restart local v0       #infoTemp:Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;
    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->setImageResid(I)V

    .line 22
    const-string/jumbo v1, "http://www.alldatapro.com/alldata/PRO~OF1"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->setWebSite(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSitesList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;

    .end local v0           #infoTemp:Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;
    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;-><init>()V

    .line 26
    .restart local v0       #infoTemp:Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;
    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->setImageResid(I)V

    .line 27
    const-string/jumbo v1, "https://www.autodata-online.net/Online/Login/AutodataLogon.aspx"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->setWebSite(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSitesList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;

    .end local v0           #infoTemp:Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;
    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;-><init>()V

    .line 31
    .restart local v0       #infoTemp:Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;
    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->setImageResid(I)V

    .line 32
    const-string/jumbo v1, "http://www.google.com"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->setWebSite(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSitesList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;

    .end local v0           #infoTemp:Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;
    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;-><init>()V

    .line 36
    .restart local v0       #infoTemp:Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;
    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->setImageResid(I)V

    .line 37
    const-string/jumbo v1, "http://www.iatn.net"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->setWebSite(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSitesList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;

    .end local v0           #infoTemp:Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;
    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;-><init>()V

    .line 41
    .restart local v0       #infoTemp:Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;
    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->setImageResid(I)V

    .line 42
    const-string/jumbo v1, "http://www.identifix.com"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->setWebSite(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSitesList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;

    .end local v0           #infoTemp:Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;
    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;-><init>()V

    .line 46
    .restart local v0       #infoTemp:Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;
    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->setImageResid(I)V

    .line 47
    const-string/jumbo v1, "http://www.launchtechusa.com"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->setWebSite(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSitesList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;

    .end local v0           #infoTemp:Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;
    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;-><init>()V

    .line 51
    .restart local v0       #infoTemp:Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;
    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->setImageResid(I)V

    .line 52
    const-string/jumbo v1, "http://www.ondemand5.com"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->setWebSite(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSitesList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;

    .end local v0           #infoTemp:Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;
    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;-><init>()V

    .line 56
    .restart local v0       #infoTemp:Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;
    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->setImageResid(I)V

    .line 57
    const-string/jumbo v1, "http://www.shopkey5.com"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->setWebSite(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSitesList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSitesList;->list:Ljava/util/ArrayList;

    return-object v0
.end method
