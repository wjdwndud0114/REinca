.class public Lcom/igaworks/adbrix/util/ABLanguage;
.super Ljava/lang/Object;
.source "ABLanguage.java"


# static fields
.field private static instance:Lcom/igaworks/adbrix/util/ABLanguage;


# instance fields
.field private lang:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adbrix/util/ABLanguage;->lang:Ljava/util/Map;

    .line 16
    invoke-virtual {p0}, Lcom/igaworks/adbrix/util/ABLanguage;->setMessageByLocale()V

    .line 17
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/igaworks/adbrix/util/ABLanguage;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    sget-object v0, Lcom/igaworks/adbrix/util/ABLanguage;->instance:Lcom/igaworks/adbrix/util/ABLanguage;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/igaworks/adbrix/util/ABLanguage;

    invoke-direct {v0, p0}, Lcom/igaworks/adbrix/util/ABLanguage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/igaworks/adbrix/util/ABLanguage;->instance:Lcom/igaworks/adbrix/util/ABLanguage;

    .line 25
    :cond_0
    sget-object v0, Lcom/igaworks/adbrix/util/ABLanguage;->instance:Lcom/igaworks/adbrix/util/ABLanguage;

    return-object v0
.end method


# virtual methods
.method public getMessageByLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/igaworks/adbrix/util/ABLanguage;->lang:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/igaworks/adbrix/util/ABLanguage;->lang:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setMessageByLocale()V
    .locals 6

    .prologue
    .line 30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 31
    .local v1, "defaultLocale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "locale":Ljava/lang/String;
    const-string v3, "ko"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    iget-object v3, p0, Lcom/igaworks/adbrix/util/ABLanguage;->lang:Ljava/util/Map;

    const-string v4, "shareWith"

    const-string v5, "\uacf5\uc720"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v3, p0, Lcom/igaworks/adbrix/util/ABLanguage;->lang:Ljava/util/Map;

    const-string v4, "close"

    const-string v5, "\ub2eb\uae30"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v3, p0, Lcom/igaworks/adbrix/util/ABLanguage;->lang:Ljava/util/Map;

    const-string v4, "canNotParticipate"

    const-string v5, "\uc8c4\uc1a1\ud569\ub2c8\ub2e4.\n\uc7a0\uc2dc \ud6c4 \ub2e4\uc2dc \uc2dc\ub3c4\ud574\uc8fc\uc138\uc694."

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    const-string v3, "ja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 38
    iget-object v3, p0, Lcom/igaworks/adbrix/util/ABLanguage;->lang:Ljava/util/Map;

    const-string v4, "shareWith"

    const-string v5, "\u30b7\u30a7\u30a2"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v3, p0, Lcom/igaworks/adbrix/util/ABLanguage;->lang:Ljava/util/Map;

    const-string v4, "close"

    const-string v5, "\u9589\u3058\u308b"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v3, p0, Lcom/igaworks/adbrix/util/ABLanguage;->lang:Ljava/util/Map;

    const-string v4, "canNotParticipate"

    const-string v5, "Sorry.\nPlease try again later."

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_2
    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 42
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "country":Ljava/lang/String;
    const-string v3, "cn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 44
    iget-object v3, p0, Lcom/igaworks/adbrix/util/ABLanguage;->lang:Ljava/util/Map;

    const-string v4, "shareWith"

    const-string v5, "\u5171\u4eab"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v3, p0, Lcom/igaworks/adbrix/util/ABLanguage;->lang:Ljava/util/Map;

    const-string v4, "close"

    const-string v5, "\u5173\u95ed"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v3, p0, Lcom/igaworks/adbrix/util/ABLanguage;->lang:Ljava/util/Map;

    const-string v4, "canNotParticipate"

    const-string v5, "Sorry.\nPlease try again later."

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 47
    :cond_3
    const-string v3, "tw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    iget-object v3, p0, Lcom/igaworks/adbrix/util/ABLanguage;->lang:Ljava/util/Map;

    const-string v4, "shareWith"

    const-string v5, "\u5171\u4eab"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v3, p0, Lcom/igaworks/adbrix/util/ABLanguage;->lang:Ljava/util/Map;

    const-string v4, "close"

    const-string v5, "\u95dc\u9589"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v3, p0, Lcom/igaworks/adbrix/util/ABLanguage;->lang:Ljava/util/Map;

    const-string v4, "canNotParticipate"

    const-string v5, "Sorry.\nPlease try again later."

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 53
    .end local v0    # "country":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/igaworks/adbrix/util/ABLanguage;->lang:Ljava/util/Map;

    const-string v4, "shareWith"

    const-string v5, "Share"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v3, p0, Lcom/igaworks/adbrix/util/ABLanguage;->lang:Ljava/util/Map;

    const-string v4, "close"

    const-string v5, "Close"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v3, p0, Lcom/igaworks/adbrix/util/ABLanguage;->lang:Ljava/util/Map;

    const-string v4, "canNotParticipate"

    const-string v5, "Sorry.\nPlease try again later."

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
