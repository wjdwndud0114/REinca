.class public Lcom/inca/security/xc;
.super Ljava/lang/Thread;
.source "lc"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inca/security/hc;
    }
.end annotation


# instance fields
.field private synthetic IIIIiiIiII:Ljava/lang/String;

.field private synthetic IIIiiiiIII:Ljava/lang/String;

.field private synthetic IIiIIIIIii:Ljava/lang/String;

.field private synthetic IIiIiIIIii:Ljava/lang/String;

.field private synthetic IIiiIiIIii:Landroid/content/Context;

.field private synthetic IiIiIIIiIi:Lcom/inca/security/hc;

.field private synthetic IiIiIiiIii:Ljava/lang/String;

.field private synthetic IiiIiiiIiI:Ljava/lang/String;

.field private synthetic IiiiiIiiIi:Ljava/lang/String;

.field private synthetic iiiiIIIiii:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inca/security/uc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/inca/security/uc;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;
    .param p5, "arg4"    # Ljava/lang/String;
    .param p6, "arg5"    # Ljava/lang/String;
    .param p7, "arg6"    # Ljava/lang/String;
    .param p8, "arg7"    # Ljava/lang/String;
    .param p9, "arg8"    # Ljava/lang/String;

    .prologue
    .line 146
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/inca/security/xc;->iiiiIIIiii:Ljava/lang/String;

    .line 105
    sget-object v1, Lcom/inca/security/hc;->IiiIiiiIiI:Lcom/inca/security/hc;

    iput-object v1, p0, Lcom/inca/security/xc;->IiIiIIIiIi:Lcom/inca/security/hc;

    .line 120
    iput-object v0, p0, Lcom/inca/security/xc;->IiiiiIiiIi:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/inca/security/xc;->IIiiIiIIii:Landroid/content/Context;

    .line 179
    iput-object p3, p0, Lcom/inca/security/xc;->IIIIiiIiII:Ljava/lang/String;

    .line 166
    iput-object p4, p0, Lcom/inca/security/xc;->IiiIiiiIiI:Ljava/lang/String;

    .line 81
    iput-object p5, p0, Lcom/inca/security/xc;->IIiIIIIIii:Ljava/lang/String;

    .line 168
    iput-object p6, p0, Lcom/inca/security/xc;->IIIiiiiIII:Ljava/lang/String;

    .line 65
    iput-object p7, p0, Lcom/inca/security/xc;->IIiIiIIIii:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/inca/security/xc;->IIiIiIIIii:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 61
    const-string v0, "null"

    iput-object v0, p0, Lcom/inca/security/xc;->IIiIiIIIii:Ljava/lang/String;

    .line 176
    :cond_0
    iput-object p8, p0, Lcom/inca/security/xc;->IiIiIiiIii:Ljava/lang/String;

    .line 141
    invoke-virtual {p9}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p9}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {p9, v0}, Lcom/inca/security/j;->IiiiIIIIii(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/xc;->iiiiIIIiii:Ljava/lang/String;

    .line 157
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/inca/security/xc;->IIiiIiIIii:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/inca/security/xc;->IIiiIiIIii:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 175
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "\u000cZ=m8K?N\u001fZ9~4Z("

    invoke-static {v1}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 152
    packed-switch v0, :pswitch_data_0

    .line 190
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "+7730yll"

    invoke-static {v2}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/inca/security/uc;->iIiIIiIIIi()[B

    move-result-object v1

    iget-object v2, p0, Lcom/inca/security/xc;->IiiIiiiIiI:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inca/security/j;->IiiiIIIIii([B[B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bD=M*GbY(X;C.OcN\""

    invoke-static {v1}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/xc;->IiiiiIiiIi:Ljava/lang/String;

    .line 199
    :goto_1
    return-void

    .line 174
    :pswitch_0
    sget-object v0, Lcom/inca/security/hc;->IIIIiiIiII:Lcom/inca/security/hc;

    iput-object v0, p0, Lcom/inca/security/xc;->IiIiIIIiIi:Lcom/inca/security/hc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    goto :goto_1

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic IiiiIIIIii(Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "arg0"    # Ljava/util/ArrayList;

    .prologue
    .line 185
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getDeviceInfo()Lcom/inca/security/c;

    move-result-object v2

    .line 28
    if-eqz v2, :cond_8

    .line 143
    const-string v1, ""

    .line 200
    invoke-virtual {v2}, Lcom/inca/security/c;->iiiIIiIiIi()Ljava/lang/String;

    move-result-object v3

    const-string v4, "x86"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 184
    invoke-virtual {v2}, Lcom/inca/security/c;->iiiiIIiiII()Ljava/lang/String;

    move-result-object v3

    const-string v4, ",X "

    invoke-static {v4}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    const-string v1, "c4*7+c\u0002\u0011\u000ec\u0006.6/\"7,1"

    invoke-static {v1}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_0
    invoke-virtual {v2}, Lcom/inca/security/c;->iiIiIIIIIi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/inca/security/c;->iiiIIiIiIi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {v2}, Lcom/inca/security/c;->iIiIIiIIIi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v2}, Lcom/inca/security/c;->IIiIIiIiIi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v1, p0, Lcom/inca/security/xc;->IIIIiiIiII:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v1, p0, Lcom/inca/security/xc;->IiIiIIIiIi:Lcom/inca/security/hc;

    sget-object v3, Lcom/inca/security/hc;->IIIIiiIiII:Lcom/inca/security/hc;

    if-eq v1, v3, :cond_2

    .line 24
    invoke-virtual {v2}, Lcom/inca/security/c;->IiIIiiIiII()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/inca/security/c;->IiIIiiIiII()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p1

    .line 14
    .end local p1    # "arg0":Ljava/util/ArrayList;
    .local v0, "arg0":Ljava/util/ArrayList;
    :goto_1
    invoke-virtual {v2}, Lcom/inca/security/c;->iiiiiiiIii()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/inca/security/c;->iiiiiiiIii()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v1, p0, Lcom/inca/security/xc;->IiIiIIIiIi:Lcom/inca/security/hc;

    sget-object v3, Lcom/inca/security/hc;->IIIIiiIiII:Lcom/inca/security/hc;

    if-eq v1, v3, :cond_5

    .line 136
    invoke-virtual {v2}, Lcom/inca/security/c;->IiIiiIiiII()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lcom/inca/security/c;->IiIiiIiiII()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    :goto_4
    iget-object v1, p0, Lcom/inca/security/xc;->IiIiIIIiIi:Lcom/inca/security/hc;

    sget-object v3, Lcom/inca/security/hc;->IIIIiiIiII:Lcom/inca/security/hc;

    if-eq v1, v3, :cond_7

    .line 38
    invoke-virtual {v2}, Lcom/inca/security/c;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Lcom/inca/security/c;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v0    # "arg0":Ljava/util/ArrayList;
    :goto_6
    return-void

    .line 24
    .restart local p1    # "arg0":Ljava/util/ArrayList;
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 21
    :cond_2
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p1

    .end local p1    # "arg0":Ljava/util/ArrayList;
    .restart local v0    # "arg0":Ljava/util/ArrayList;
    goto :goto_1

    .line 14
    :cond_3
    const-string v1, ""

    goto :goto_2

    .line 136
    :cond_4
    const-string v1, ""

    goto :goto_3

    .line 158
    :cond_5
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 38
    :cond_6
    const-string v1, ""

    goto :goto_5

    .line 142
    :cond_7
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 52
    .end local v0    # "arg0":Ljava/util/ArrayList;
    .restart local p1    # "arg0":Ljava/util/ArrayList;
    :cond_8
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v1, p0, Lcom/inca/security/xc;->IIIIiiIiII:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-direct {p0, v1}, Lcom/inca/security/xc;->IiiiIIIIii(Ljava/util/ArrayList;)V

    .line 33
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v2, "f0?f0?f0?f0?"

    invoke-static {v2}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/inca/security/xc;->IiiIiiiIiI:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/inca/security/xc;->IIiIIIIIii:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/inca/security/xc;->IIIiiiiIII:Ljava/lang/String;

    aput-object v4, v3, v7

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/inca/security/xc;->IIiIiIIIii:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    move-object v0, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "1"

    invoke-static {v2}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    .line 133
    goto :goto_0

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inca/security/xc;->IiIiIiiIii:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 178
    invoke-static {v0, v1}, Lcom/inca/security/j;->IiiiIIIIii(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v7}, Lcom/inca/security/gb;->iIiIIiIIIi([BI)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 108
    invoke-static {}, Lcom/inca/security/yb;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/inca/security/j;->IiiiIIIIii(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 194
    :try_start_0
    new-instance v3, Lcom/inca/security/ka;

    invoke-direct {v3}, Lcom/inca/security/ka;-><init>()V

    iget-object v4, p0, Lcom/inca/security/xc;->IiiiiIiiIi:Ljava/lang/String;

    .line 202
    invoke-virtual {v3, v4}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;)Lcom/inca/security/ka;

    move-result-object v3

    const-string v4, "*\'"

    invoke-static {v4}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {v3, v4, v2}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;

    move-result-object v2

    const-string v3, ")_ G4"

    invoke-static {v3}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;

    move-result-object v2

    const-string v3, "&;71\""

    invoke-static {v3}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inca/security/xc;->iiiiIIIiii:Ljava/lang/String;

    .line 206
    invoke-virtual {v2, v3, v4}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;

    move-result-object v2

    const-string v3, "Y(Y>C\"D\u0019E&O#"

    invoke-static {v3}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-virtual {v2, v3, v0}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;

    move-result-object v0

    const/16 v2, 0x3a98

    .line 167
    invoke-virtual {v0, v2}, Lcom/inca/security/ka;->IiiiIIIIii(I)Lcom/inca/security/ka;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/inca/security/ka;->IiiiIIIIii()Lcom/inca/security/xa;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/inca/security/xa;->IiiiIIIIii()Ljava/util/Map;

    move-result-object v2

    .line 156
    sget-object v3, Lcom/inca/security/wa;->IIIiiiiIII:Lcom/inca/security/wa;

    invoke-virtual {v0}, Lcom/inca/security/xa;->IiiiIIIIii()Lcom/inca/security/wa;

    move-result-object v0

    if-ne v3, v0, :cond_1

    .line 47
    const-string v0, "\'\"7\""

    invoke-static {v0}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const v2, 0xa2f8cd

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 70
    :cond_1
    :goto_1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 201
    return-void

    .line 20
    :catch_0
    move-exception v0

    goto :goto_1

    .line 145
    :catch_1
    move-exception v0

    goto :goto_1
.end method
