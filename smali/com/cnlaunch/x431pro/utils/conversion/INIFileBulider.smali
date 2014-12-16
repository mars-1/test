.class public Lcom/cnlaunch/x431pro/utils/conversion/INIFileBulider;
.super Ljava/lang/Object;
.source "INIFileBulider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLanINIFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "lan"
    .parameter "filePath"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "INI_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, file:Ljava/lang/String;
    const/4 v1, 0x0

    .line 21
    .local v1, iniStr:Ljava/lang/String;
    const-string/jumbo v2, "CN"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ZH"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 22
    :cond_0
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 23
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 148
    const-string/jumbo v2, "Sanda"

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "Error: null"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "INI_EN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 151
    const-string/jumbo v2, "GB2312"

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    :cond_2
    :goto_1
    const-string/jumbo v2, "Sanda"

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "lan="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " filepath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    return-object v1

    .line 25
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v2, "CN"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "INI_ZH"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    goto/16 :goto_0

    .line 25
    :cond_4
    const-string/jumbo v2, "INI_CN"

    goto :goto_2

    .line 30
    :cond_5
    const-string/jumbo v2, "JP"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "JA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 31
    :cond_6
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 32
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    goto/16 :goto_0

    .line 34
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v2, "JP"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "INI_JA"

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    goto/16 :goto_0

    .line 34
    :cond_8
    const-string/jumbo v2, "INI_JP"

    goto :goto_3

    .line 39
    :cond_9
    const-string/jumbo v2, "HK"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "TW"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 40
    :cond_a
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 41
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    goto/16 :goto_0

    .line 43
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v2, "HK"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo v2, "INI_TW"

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    goto/16 :goto_0

    .line 43
    :cond_c
    const-string/jumbo v2, "INI_HK"

    goto :goto_4

    .line 48
    :cond_d
    const-string/jumbo v2, "PT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string/jumbo v2, "BR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 49
    :cond_e
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 50
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    goto/16 :goto_0

    .line 52
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v2, "BR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string/jumbo v2, "INI_PT"

    :goto_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    goto/16 :goto_0

    .line 52
    :cond_10
    const-string/jumbo v2, "INI_BR"

    goto :goto_5

    .line 57
    :cond_11
    const-string/jumbo v2, "AR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string/jumbo v2, "EG"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string/jumbo v2, "ARABIC"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 58
    :cond_12
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 59
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    goto/16 :goto_0

    .line 61
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "INI_AR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 63
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    goto/16 :goto_0

    .line 65
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "INI_EG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 67
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    goto/16 :goto_0

    .line 69
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "INI_ARABIC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    goto/16 :goto_0

    :cond_16
    const-string/jumbo v2, "DA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string/jumbo v2, "DK"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 77
    :cond_17
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 78
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    goto/16 :goto_0

    .line 80
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v2, "DA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string/jumbo v2, "INI_DK"

    :goto_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    goto/16 :goto_0

    .line 80
    :cond_19
    const-string/jumbo v2, "INI_DA"

    goto :goto_6

    .line 85
    :cond_1a
    const-string/jumbo v2, "FA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string/jumbo v2, "IR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 86
    :cond_1b
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 87
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    goto/16 :goto_0

    .line 89
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v2, "FA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string/jumbo v2, "INI_IR"

    :goto_7
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    goto/16 :goto_0

    .line 89
    :cond_1d
    const-string/jumbo v2, "INI_FA"

    goto :goto_7

    .line 94
    :cond_1e
    const-string/jumbo v2, "KO"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string/jumbo v2, "KR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string/jumbo v2, "KOREAN"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 95
    :cond_1f
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 96
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    goto/16 :goto_0

    .line 98
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "INI_KO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 100
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    goto/16 :goto_0

    .line 102
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "INI_KR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 104
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    goto/16 :goto_0

    .line 106
    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "INI_KOREAN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    goto/16 :goto_0

    :cond_23
    const-string/jumbo v2, "SV"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string/jumbo v2, "SE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 114
    :cond_24
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 115
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    goto/16 :goto_0

    .line 117
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v2, "SV"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string/jumbo v2, "INI_SE"

    :goto_8
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    goto/16 :goto_0

    .line 117
    :cond_26
    const-string/jumbo v2, "INI_SV"

    goto :goto_8

    .line 122
    :cond_27
    const-string/jumbo v2, "CS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string/jumbo v2, "CZ"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 123
    :cond_28
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 124
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    goto/16 :goto_0

    .line 126
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v2, "CS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string/jumbo v2, "INI_CZ"

    :goto_9
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    goto/16 :goto_0

    .line 126
    :cond_2a
    const-string/jumbo v2, "INI_CS"

    goto :goto_9

    .line 131
    :cond_2b
    const-string/jumbo v2, "SR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string/jumbo v2, "RS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 132
    :cond_2c
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 133
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    goto/16 :goto_0

    .line 135
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v2, "SR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string/jumbo v2, "INI_RS"

    :goto_a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    goto/16 :goto_0

    .line 135
    :cond_2e
    const-string/jumbo v2, "INI_SR"

    goto :goto_a

    .line 142
    :cond_2f
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 153
    :cond_30
    const-string/jumbo v1, " "

    goto/16 :goto_1
.end method
