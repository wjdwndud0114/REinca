.class public Lcom/inca/security/fa;
.super Ljava/lang/Thread;
.source "ea"


# instance fields
.field private synthetic IIIIiiIiII:I

.field public synthetic IIIiiiiIII:Ljava/lang/String;

.field public synthetic IIiIIIIIii:Ljava/lang/Exception;

.field public synthetic IIiIIIIiIi:Ljava/lang/String;

.field public synthetic IIiIiIIIii:I

.field public synthetic IIiiIiIIii:I

.field public synthetic IiIIIiIIIi:I

.field public final synthetic IiIiIIIiIi:Ljava/lang/String;

.field public synthetic IiIiIiiIii:Landroid/content/Context;

.field public synthetic IiiIiiiIiI:Ljava/lang/String;

.field public final synthetic IiiiIIIiIi:Ljava/lang/String;

.field public synthetic IiiiiIiiIi:I

.field private synthetic iiIIIIIiiI:Z

.field public synthetic iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

.field private synthetic iiIIiIiIii:Z

.field public synthetic iiIiIIIiiI:Lcom/inca/security/sa;

.field public synthetic iiiIiiiiII:Ljava/lang/String;

.field public synthetic iiiiIIIiii:Lcom/inca/security/uc;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/inca/security/Interface/BaseEventInvoker;ILjava/lang/String;Ljava/lang/String;Lcom/inca/security/uc;)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/inca/security/Interface/BaseEventInvoker;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/String;
    .param p5, "arg4"    # Ljava/lang/String;
    .param p6, "arg5"    # Lcom/inca/security/uc;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 152
    const-string v0, "update.dat.new"

    const-string v1, "update.dat"

    const-string v2, "GG_UPDATE"

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 97
    iput-object v4, p0, Lcom/inca/security/fa;->IiIiIiiIii:Landroid/content/Context;

    .line 105
    iput-object v4, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    .line 120
    iput-object v4, p0, Lcom/inca/security/fa;->iiIiIIIiiI:Lcom/inca/security/sa;

    .line 195
    iput v3, p0, Lcom/inca/security/fa;->IiIIIiIIIi:I

    .line 146
    iput-object v2, p0, Lcom/inca/security/fa;->iiiIiiiiII:Ljava/lang/String;

    .line 123
    iput-object v4, p0, Lcom/inca/security/fa;->IiiIiiiIiI:Ljava/lang/String;

    .line 166
    iput-object v4, p0, Lcom/inca/security/fa;->iiiiIIIiii:Lcom/inca/security/uc;

    .line 168
    iput-object v1, p0, Lcom/inca/security/fa;->IiIiIIIiIi:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/inca/security/fa;->IiiiIIIiIi:Ljava/lang/String;

    .line 61
    iput-object v4, p0, Lcom/inca/security/fa;->IIiIIIIiIi:Ljava/lang/String;

    .line 112
    iput-object v4, p0, Lcom/inca/security/fa;->IIIiiiiIII:Ljava/lang/String;

    .line 176
    iput v3, p0, Lcom/inca/security/fa;->IIIIiiIiII:I

    .line 115
    iput-boolean v3, p0, Lcom/inca/security/fa;->iiIIIIIiiI:Z

    .line 48
    iput-boolean v3, p0, Lcom/inca/security/fa;->iiIIiIiIii:Z

    .line 153
    iput v3, p0, Lcom/inca/security/fa;->IIiIiIIIii:I

    .line 40
    iput v3, p0, Lcom/inca/security/fa;->IiiiiIiiIi:I

    .line 157
    iput v3, p0, Lcom/inca/security/fa;->IIiiIiIIii:I

    .line 25
    iput-object v4, p0, Lcom/inca/security/fa;->IIiIIIIIii:Ljava/lang/Exception;

    .line 119
    iput-object p1, p0, Lcom/inca/security/fa;->IiIiIiiIii:Landroid/content/Context;

    .line 174
    iput-object p2, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    .line 155
    iput p3, p0, Lcom/inca/security/fa;->IiIIIiIIIi:I

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "D"

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/fa;->IiiIiiiIiI:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/inca/security/fa;->IIiIIIIiIi:Ljava/lang/String;

    .line 190
    iput-object p5, p0, Lcom/inca/security/fa;->IIIiiiiIII:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lcom/inca/security/fa;->iiiiIIIiii:Lcom/inca/security/uc;

    .line 139
    return-void
.end method

.method public static synthetic IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v2, v0, [C

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v3, v1, -0x1

    xor-int/lit8 v0, v0, 0x23

    int-to-char v0, v0

    aput-char v0, v2, v1

    if-ltz v3, :cond_0

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/lit8 v1, v1, 0x50

    int-to-char v1, v1

    aput-char v1, v2, v3

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public synthetic IiiiIIIIii()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/inca/security/fa;->IIIIiiIiII:I

    return v0
.end method

.method public synthetic IiiiIIIIii(Lcom/inca/security/ga;Lcom/inca/security/ab;)I
    .locals 9
    .param p1, "arg0"    # Lcom/inca/security/ga;
    .param p2, "arg1"    # Lcom/inca/security/ab;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v0, -0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 104
    iget-boolean v2, p0, Lcom/inca/security/fa;->iiIIiIiIii:Z

    if-eqz v2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    iget-object v2, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    if-eqz v2, :cond_2

    .line 163
    iget-object v2, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    const/16 v3, 0x9

    invoke-interface {v2, v1, v3, v6}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    .line 6
    :cond_2
    const-string v2, "uG~\u00064\u000c"

    invoke-static {v2}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    iget v4, p0, Lcom/inca/security/fa;->IiiiiIiiIi:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget v4, p0, Lcom/inca/security/fa;->IIiiIiIIii:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 178
    const-string v3, "update.dat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/inca/security/fa;->IiiIiiiIiI:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "update.dat.new"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Lcom/inca/security/ga;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 68
    iget-object v1, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    if-eqz v1, :cond_0

    .line 15
    iget-object v1, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    invoke-interface {v1, v7, v8, v6}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    goto :goto_0

    .line 103
    :cond_3
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/inca/security/fa;->IiiIiiiIiI:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "update.dat.new"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance v3, Lcom/inca/security/sa;

    invoke-direct {v3, v2}, Lcom/inca/security/sa;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/inca/security/fa;->iiIiIIIiiI:Lcom/inca/security/sa;

    .line 206
    iget-object v2, p0, Lcom/inca/security/fa;->iiIiIIIiiI:Lcom/inca/security/sa;

    invoke-virtual {v2}, Lcom/inca/security/sa;->IiiiIIIIii()Z

    move-result v2

    if-nez v2, :cond_4

    .line 167
    iget-object v1, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    const/4 v2, 0x7

    invoke-interface {v1, v7, v2, v6}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    goto/16 :goto_0

    .line 10
    :cond_4
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/inca/security/fa;->IiiIiiiIiI:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "update.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 173
    goto/16 :goto_0

    .line 145
    :cond_5
    new-instance v2, Lcom/inca/security/sa;

    invoke-direct {v2, v0}, Lcom/inca/security/sa;-><init>(Ljava/io/File;)V

    .line 82
    invoke-virtual {v2}, Lcom/inca/security/sa;->IiiiIIIIii()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inca/security/fa;->iiIIIIIiiI:Z

    .line 93
    iget-boolean v0, p0, Lcom/inca/security/fa;->iiIIIIIiiI:Z

    if-nez v0, :cond_6

    move v0, v1

    .line 198
    goto/16 :goto_0

    .line 63
    :cond_6
    iget-object v0, p0, Lcom/inca/security/fa;->IiiIiiiIiI:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/inca/security/sa;->IiiiIIIIii(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 197
    iget-object v0, p0, Lcom/inca/security/fa;->IiIiIiiIii:Landroid/content/Context;

    invoke-static {}, Lcom/inca/security/DexProtect/Binder;->getABI()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/inca/security/fa;->IiiiIIIIii(Landroid/content/Context;I)Z

    .line 28
    iget-object v0, p0, Lcom/inca/security/fa;->IiiIiiiIiI:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/inca/security/sa;->IiiiIIIIii(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 200
    iget-object v0, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    if-eqz v0, :cond_7

    .line 184
    iget-object v0, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    const/16 v2, 0x27

    invoke-interface {v0, v8, v2, v6}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    :cond_7
    move v0, v1

    .line 1
    goto/16 :goto_0

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/inca/security/fa;->iiIiIIIiiI:Lcom/inca/security/sa;

    invoke-virtual {v0}, Lcom/inca/security/sa;->IiiiIIIIii()S

    move-result v0

    invoke-virtual {v2}, Lcom/inca/security/sa;->IiiiIIIIii()S

    move-result v3

    if-eq v0, v3, :cond_9

    move v0, v1

    .line 102
    goto/16 :goto_0

    .line 128
    :cond_9
    iget-object v0, p0, Lcom/inca/security/fa;->iiIiIIIiiI:Lcom/inca/security/sa;

    invoke-virtual {v0, v2}, Lcom/inca/security/sa;->IiiiIIIIii(Lcom/inca/security/sa;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public synthetic IiiiIIIIii()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/inca/security/fa;->IIiIIIIiIi:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic IiiiIIIIii(Lcom/inca/security/uc;)Ljava/lang/String;
    .locals 8
    .param p1, "arg0"    # Lcom/inca/security/uc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1364
    const-string v1, ""

    .line 778
    iget-object v0, p0, Lcom/inca/security/fa;->IIiIIIIiIi:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_3

    .line 646
    :cond_0
    new-instance v0, Lcom/inca/security/za;

    invoke-direct {v0, p0}, Lcom/inca/security/za;-><init>(Lcom/inca/security/fa;)V

    .line 1161
    invoke-virtual {v0}, Lcom/inca/security/za;->start()V

    .line 779
    iget-object v0, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    if-eqz v0, :cond_1

    .line 977
    iget-object v0, p0, Lcom/inca/security/fa;->IIiIIIIiIi:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 855
    iget-object v0, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {v0, v6, v2, v3}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    .line 1432
    :cond_1
    :goto_0
    return-object v1

    .line 963
    :cond_2
    iget-object v0, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    const/4 v2, 0x4

    const-string v3, "#F\"U5Q\u0004Z FpJ#\u0003>V<O"

    invoke-static {v3}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v0, v6, v2, v3}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    goto :goto_0

    .line 787
    :cond_3
    new-instance v0, Lcom/inca/security/cb;

    iget-object v2, p0, Lcom/inca/security/fa;->IiIiIiiIii:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/inca/security/cb;-><init>(Landroid/content/Context;)V

    .line 1478
    new-instance v2, Lcom/inca/security/ka;

    invoke-direct {v2}, Lcom/inca/security/ka;-><init>()V

    .line 1494
    const-string v3, " \u000e1\u001f"

    invoke-static {v3}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inca/security/fa;->IIiIIIIiIi:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;

    .line 1562
    const-string v3, "S1@;B7F>B=F"

    invoke-static {v3}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inca/security/fa;->IiIiIiiIii:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;

    .line 928
    const-string v3, "*\u000f"

    invoke-static {v3}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inca/security/fa;->IiIiIiiIii:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "1M4Q?J4|9G"

    invoke-static {v5}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;

    .line 527
    const-string v3, "3\u0019,\u001f,\u0008,\u0007"

    invoke-static {v3}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u0011"

    invoke-static {v4}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;

    .line 1497
    const-string v3, "\u0008&\u00197\u001e*\u000f"

    invoke-static {v3}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inca/security/cb;->IIiIIiIiIi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;

    .line 1555
    const-string v3, "3F\"W6J>D5Q"

    invoke-static {v3}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inca/security/cb;->IiIiiIiiII()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;

    .line 1157
    iget-object v0, p0, Lcom/inca/security/fa;->IIIiiiiIII:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1464
    const-string v0, "\u00187\u00041\u000e*\u000f"

    invoke-static {v0}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/inca/security/fa;->IIIiiiiIII:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;

    .line 1404
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "8W$S#\u0019\u007f\u000c"

    invoke-static {v3}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/inca/security/uc;->IiiiIIIIii()[B

    move-result-object v3

    iget-object v4, p0, Lcom/inca/security/fa;->IIiIIIIiIi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/inca/security/j;->IiiiIIIIii([B[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "D\"\u001b*D5Z"

    invoke-static {v3}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;)Lcom/inca/security/ka;

    .line 883
    iget v0, p0, Lcom/inca/security/fa;->IiIIIiIIIi:I

    invoke-virtual {v2, v0}, Lcom/inca/security/ka;->IiiiIIIIii(I)Lcom/inca/security/ka;

    .line 1109
    invoke-virtual {v2, v6}, Lcom/inca/security/ka;->IiiiIIIIii(Z)Lcom/inca/security/ka;

    .line 1434
    invoke-virtual {p1}, Lcom/inca/security/uc;->IIiIIiIiIi()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/inca/security/ka;->IiiiIIIIii([B)Lcom/inca/security/ka;

    .line 932
    invoke-virtual {v2}, Lcom/inca/security/ka;->IiiiIIIIii()Lcom/inca/security/xa;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Lcom/inca/security/xa;->IiiiIIIIii()Ljava/util/Map;

    move-result-object v2

    .line 1138
    sget-object v3, Lcom/inca/security/wa;->IIIiiiiIII:Lcom/inca/security/wa;

    invoke-virtual {v0}, Lcom/inca/security/xa;->IiiiIIIIii()Lcom/inca/security/wa;

    move-result-object v4

    if-ne v3, v4, :cond_5

    .line 673
    const-string v0, "3L4F"

    invoke-static {v0}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 721
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_6

    .line 1200
    const-string v0, "\'\n7\n"

    invoke-static {v0}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 810
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1465
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v0

    .line 915
    goto/16 :goto_0

    :cond_5
    sget-object v2, Lcom/inca/security/wa;->IiIiIiiIii:Lcom/inca/security/wa;

    invoke-virtual {v0}, Lcom/inca/security/xa;->IiiiIIIIii()Lcom/inca/security/wa;

    move-result-object v0

    if-ne v2, v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    if-eqz v0, :cond_1

    .line 845
    iget-object v0, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    const/4 v2, 0x2

    const/16 v3, 0x16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "`\u0015u\u0015m\u0004|\u0003p\u001c|\u001dj\u0004n\u000fb\u0004w\u0011`\u001b\u000b"

    invoke-static {v5}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1150
    invoke-virtual {p1}, Lcom/inca/security/uc;->IiiiIIIIii()[B

    move-result-object v5

    iget-object v6, p0, Lcom/inca/security/fa;->IIiIIIIiIi:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6}, Lcom/inca/security/j;->IiiiIIIIii([B[B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "B"

    invoke-static {v5}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 845
    invoke-interface {v0, v2, v3, v4}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method public synthetic IiiiIIIIii()Z
    .locals 1

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/inca/security/fa;->iiIIIIIiiI:Z

    return v0
.end method

.method public synthetic IiiiIIIIii(Landroid/content/Context;I)Z
    .locals 13
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 191
    const-string v0, "armeabi"

    .line 17
    if-nez p2, :cond_2

    .line 35
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v4, "x86"

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 38
    const-string v0, "x86"

    .line 80
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "l\u0007*\t&\u0005$\u0002-\u000em\u0018,\u0013"

    invoke-static {v6}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    const/16 v4, 0x10

    :try_start_0
    new-array v7, v4, [B

    .line 107
    const/16 v4, 0x10

    new-array v8, v4, [B

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const-string v10, "B S7V1Q4\u000c"

    invoke-static {v10}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "l\u0007*\t&\u0005$\u0002-\u000em\u0018,\u0013"

    invoke-static {v9}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 144
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v9, 0x6

    .line 37
    :try_start_2
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    .line 111
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    .line 36
    invoke-static {v7, v9}, Lcom/inca/security/va;->iIiIIiIIIi([BI)I

    move-result v9

    const/4 v10, 0x6

    invoke-static {v8, v10}, Lcom/inca/security/va;->iIiIIiIIIi([BI)I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 95
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :catch_0
    move-exception v7

    .line 90
    :goto_1
    if-eqz v4, :cond_7

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v4, v6

    .line 74
    :goto_2
    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 169
    :cond_1
    :goto_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_17

    .line 186
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const-string v7, "B S7V1Q4\u000c"

    invoke-static {v7}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "l\u0007*\t&\u0005$\u0002-\u000em\u0018,\u0013"

    invoke-static {v6}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v1

    move-object v4, v1

    .line 476
    :goto_4
    if-eqz v1, :cond_b

    .line 261
    :try_start_6
    const-string v1, "\u0007*\t&\u0005$\u0002-\u000em\u0018,\u0013"

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {p1, v1, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    .line 407
    const/16 v1, 0x1000

    new-array v7, v1, [B

    move-object v1, v4

    .line 322
    :goto_5
    invoke-virtual {v1, v7}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_a

    .line 299
    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    move-object v1, v4

    goto :goto_5

    .line 73
    :cond_2
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 52
    :pswitch_0
    const-string v0, "armeabi"

    goto/16 :goto_0

    .line 148
    :pswitch_1
    const-string v0, "x86"

    goto/16 :goto_0

    .line 140
    :cond_3
    const/16 v9, 0xa

    :try_start_7
    invoke-static {v7, v9}, Lcom/inca/security/va;->iIiIIiIIIi([BI)I

    move-result v7

    const/16 v9, 0xa

    invoke-static {v8, v9}, Lcom/inca/security/va;->iIiIIiIIIi([BI)I

    move-result v8

    if-le v7, v8, :cond_5

    .line 137
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 196
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    throw v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 90
    :catchall_0
    move-exception v0

    move-object v5, v4

    :goto_6
    if-eqz v5, :cond_8

    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    move-object v1, v6

    .line 74
    :goto_7
    if-eqz v1, :cond_4

    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    :cond_4
    :goto_8
    throw v0

    .line 90
    :cond_5
    if-eqz v4, :cond_6

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    move-object v4, v6

    .line 74
    :goto_9
    if-eqz v4, :cond_1

    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v4

    goto/16 :goto_3

    .line 90
    :catch_2
    move-exception v4

    :cond_6
    move-object v4, v6

    .line 74
    goto :goto_9

    .line 90
    :catch_3
    move-exception v4

    :cond_7
    move-object v4, v6

    .line 74
    goto/16 :goto_2

    .line 90
    :catch_4
    move-exception v1

    :cond_8
    move-object v1, v6

    .line 74
    goto :goto_7

    .line 118
    :catch_5
    move-exception v1

    .line 62
    iget-object v1, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    if-eqz v1, :cond_9

    .line 315
    const-string v1, "1P#F$P\u007fB S7V1Q4\u000cuP\u007fO9A5M7J>F~P?["

    invoke-static {v1}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v3

    .line 382
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-static {v1}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)[B

    move-result-object v1

    .line 265
    iget-object v4, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    invoke-interface {v4, v11, v12, v1}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    .line 248
    :cond_9
    new-instance v1, Lcom/inca/security/oa;

    invoke-direct {v1, p0}, Lcom/inca/security/oa;-><init>(Lcom/inca/security/fa;)V

    .line 447
    invoke-virtual {v1}, Lcom/inca/security/oa;->start()V

    move-object v1, v5

    move-object v4, v5

    .line 476
    goto/16 :goto_4

    .line 417
    :cond_a
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 294
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    :cond_b
    :goto_a
    move v1, v2

    .line 402
    :goto_b
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u007fO9A#W%A~P?["

    invoke-static {v7}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_c

    if-ne v1, v2, :cond_f

    .line 386
    :cond_c
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 213
    :try_start_d
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const-string v8, "\n3\u001b$\u001e\"\u0019\'D"

    invoke-static {v8}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u007fO9A#W%A~P?["

    invoke-static {v7}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    move-result-object v4

    move-object v6, v4

    .line 341
    :goto_c
    if-eqz v4, :cond_f

    .line 345
    :try_start_e
    const-string v4, "O9A#W%A~P?["

    invoke-static {v4}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 215
    const/16 v4, 0x1000

    new-array v8, v4, [B

    move-object v4, v6

    .line 452
    :goto_d
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_e

    .line 436
    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    move-object v4, v6

    goto :goto_d

    .line 365
    :catch_6
    move-exception v4

    .line 429
    iget-object v4, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    if-eqz v4, :cond_d

    .line 371
    const-string v4, "\"\u00180\u000e7\u0018l\n3\u001b$\u001e\"\u0019\'Df\u0018l\u0007*\t0\u001f6\tm\u0018,\u0013"

    invoke-static {v4}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    .line 234
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 371
    invoke-static {v4}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)[B

    move-result-object v4

    .line 217
    iget-object v6, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    invoke-interface {v6, v11, v12, v4}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    .line 376
    :cond_d
    new-instance v4, Lcom/inca/security/pa;

    invoke-direct {v4, p0}, Lcom/inca/security/pa;-><init>(Lcom/inca/security/fa;)V

    .line 291
    invoke-virtual {v4}, Lcom/inca/security/pa;->start()V

    move-object v4, v5

    move-object v6, v5

    .line 341
    goto :goto_c

    .line 466
    :cond_e
    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 346
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 238
    :cond_f
    :goto_e
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "D6\u001b\'\n7\u000em\u000f\"\u001f"

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_10

    if-ne v1, v2, :cond_13

    .line 246
    :cond_10
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 411
    :try_start_10
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "B S7V1Q4\u000c%S4B$F~G1W"

    invoke-static {v4}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    move-result-object v0

    move-object v1, v0

    .line 297
    :goto_f
    if-eqz v0, :cond_13

    .line 304
    :try_start_11
    const-string v0, "update.dat"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 320
    const/16 v0, 0x1000

    new-array v4, v0, [B

    move-object v0, v1

    .line 317
    :goto_10
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_12

    .line 267
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    move-object v0, v1

    goto :goto_10

    .line 461
    :catch_7
    move-exception v1

    .line 375
    iget-object v1, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    if-eqz v1, :cond_11

    .line 354
    const-string v1, "\"\u00180\u000e7\u0018l\n3\u001b$\u001e\"\u0019\'D6\u001b\'\n7\u000em\u000f\"\u001f"

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v3

    .line 316
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-static {v0}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)[B

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    invoke-interface {v1, v11, v12, v0}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    .line 307
    :cond_11
    new-instance v0, Lcom/inca/security/ba;

    invoke-direct {v0, p0}, Lcom/inca/security/ba;-><init>(Lcom/inca/security/fa;)V

    .line 471
    invoke-virtual {v0}, Lcom/inca/security/ba;->start()V

    move-object v0, v5

    move-object v1, v5

    .line 297
    goto :goto_f

    .line 255
    :cond_12
    :try_start_12
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 463
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    .line 353
    :cond_13
    :goto_11
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "O9A5M7J>F~P?["

    invoke-static {v3}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u0007*\t0\u001f6\tm\u0018,\u0013"

    invoke-static {v3}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_16

    .line 399
    :cond_14
    iget-object v0, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    if-eqz v0, :cond_15

    .line 455
    iget-object v0, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    const/16 v1, 0x9

    invoke-interface {v0, v2, v1, v5}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    .line 241
    :cond_15
    new-instance v0, Lcom/inca/security/na;

    invoke-direct {v0, p0}, Lcom/inca/security/na;-><init>(Lcom/inca/security/fa;)V

    .line 323
    invoke-virtual {v0}, Lcom/inca/security/na;->start()V

    .line 420
    :cond_16
    return v2

    .line 74
    :catch_8
    move-exception v4

    goto/16 :goto_3

    :catch_9
    move-exception v1

    goto/16 :goto_8

    .line 219
    :catch_a
    move-exception v0

    goto :goto_11

    .line 451
    :catch_b
    move-exception v4

    goto/16 :goto_e

    .line 459
    :catch_c
    move-exception v1

    goto/16 :goto_a

    .line 90
    :catchall_1
    move-exception v0

    move-object v6, v5

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    goto/16 :goto_6

    .line 88
    :catch_d
    move-exception v4

    move-object v4, v5

    move-object v6, v5

    goto/16 :goto_1

    :catch_e
    move-exception v4

    move-object v4, v5

    goto/16 :goto_1

    :cond_17
    move v1, v3

    goto/16 :goto_b

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic iIiIIiIIIi()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v3, -0x1

    .line 288
    .line 360
    const-string v0, ""

    .line 332
    invoke-virtual {p0}, Lcom/inca/security/fa;->iIiIIiIIIi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    const/4 v1, 0x6

    invoke-interface {v0, v6, v1, v7}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    .line 443
    :cond_0
    :goto_0
    return v3

    .line 362
    :cond_1
    invoke-virtual {p0}, Lcom/inca/security/fa;->iIiIIiIIIi()Ljava/lang/String;

    move-result-object v0

    .line 472
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 426
    iget-object v0, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inca/security/fa;->IIiIIIIIii:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 440
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 289
    iget-object v2, p0, Lcom/inca/security/fa;->IIiIIIIIii:Ljava/lang/Exception;

    invoke-virtual {v2, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 393
    iget-object v2, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    const/4 v4, 0x4

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-interface {v2, v6, v4, v0}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    .line 211
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    .line 230
    :cond_2
    new-instance v1, Lcom/inca/security/pb;

    invoke-direct {v1, v0}, Lcom/inca/security/pb;-><init>(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v1}, Lcom/inca/security/pb;->IiiiIIIIii()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 419
    invoke-virtual {v1}, Lcom/inca/security/pb;->IiIiiIiiII()Ljava/util/ArrayList;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    move v2, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/ab;

    .line 370
    iget v4, p0, Lcom/inca/security/fa;->IiIIIiIIIi:I

    invoke-static {v0, v4}, Lcom/inca/security/jb;->IiiiIIIIii(Lcom/inca/security/ab;I)Lcom/inca/security/ga;

    move-result-object v4

    .line 245
    invoke-virtual {v4}, Lcom/inca/security/ga;->IiiiIIIIii()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v0, v1

    .line 303
    goto :goto_1

    .line 240
    :cond_3
    invoke-virtual {p0, v4, v0}, Lcom/inca/security/fa;->IiiiIIIIii(Lcom/inca/security/ga;Lcom/inca/security/ab;)I

    move-result v0

    .line 425
    if-gez v0, :cond_4

    move v2, v0

    move-object v0, v1

    .line 418
    goto :goto_1

    .line 465
    :cond_4
    invoke-virtual {v4}, Lcom/inca/security/ga;->IiiiIIIIii()V

    .line 462
    :goto_2
    if-ne v3, v0, :cond_5

    .line 224
    iget-object v1, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    if-eqz v1, :cond_5

    .line 280
    iget-object v1, p0, Lcom/inca/security/fa;->iiIIIiiiiI:Lcom/inca/security/Interface/BaseEventInvoker;

    invoke-interface {v1, v6, v6, v7}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    :cond_5
    move v3, v0

    .line 249
    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v0, v3

    goto :goto_2
.end method

.method public synthetic iIiIIiIIIi()Ljava/lang/String;
    .locals 7

    .prologue
    .line 363
    const-string v1, ""

    .line 1574
    const/4 v0, 0x0

    move v2, v0

    .line 1474
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/inca/security/fa;->iiiiIIIiii:Lcom/inca/security/uc;

    invoke-virtual {p0, v0}, Lcom/inca/security/fa;->IiiiIIIIii(Lcom/inca/security/uc;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 900
    :try_start_1
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1427
    :goto_1
    return-object v0

    .line 850
    :cond_0
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move v3, v2

    .line 700
    :goto_2
    add-int/lit8 v1, v2, 0x1

    const/4 v2, 0x3

    if-lt v3, v2, :cond_1

    .line 1065
    :try_start_2
    iget-object v1, p0, Lcom/inca/security/fa;->iiiiIIIiii:Lcom/inca/security/uc;

    invoke-virtual {p0, v1}, Lcom/inca/security/fa;->IiiiIIIIii(Lcom/inca/security/uc;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_1

    .line 1309
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 1081
    :goto_3
    iput-object v0, p0, Lcom/inca/security/fa;->IIiIIIIIii:Ljava/lang/Exception;

    move v3, v2

    move-object v0, v1

    .line 990
    goto :goto_2

    .line 671
    :catch_1
    move-exception v1

    .line 1202
    iput-object v1, p0, Lcom/inca/security/fa;->IIiIIIIIii:Ljava/lang/Exception;

    goto :goto_1

    .line 781
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 1309
    :catch_4
    move-exception v0

    goto :goto_3

    :cond_1
    move v2, v1

    move-object v1, v0

    goto :goto_0
.end method

.method public synthetic iIiIIiIIIi()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1342
    iget-object v0, p0, Lcom/inca/security/fa;->IiIiIiiIii:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "B>G\"L9G~S5Q=J#P9L>\r\u0019m\u0004f\u0002m\u0015w"

    invoke-static {v2}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/inca/security/fa;->IiIiIiiIii:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inca/security/fa;->IiIiIiiIii:Landroid/content/Context;

    .line 837
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "\n-\u000f1\u0004*\u000fm\u001b&\u0019.\u00020\u0018*\u0004-E\u0002(\u0000.\u00108\u001c%\u0006?\u0014$\u0011 \u001c8\u0017*\u0017."

    invoke-static {v2}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/inca/security/fa;->IiIiIiiIii:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/inca/security/fa;->IiIiIiiIii:Landroid/content/Context;

    const-string v2, "3L>M5@$J&J$Z"

    invoke-static {v2}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1141
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1256
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1075
    goto :goto_0
.end method

.method public synthetic run()V
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/inca/security/fa;->iIiIIiIIIi()I

    move-result v0

    iput v0, p0, Lcom/inca/security/fa;->IIIIiiIiII:I

    .line 50
    return-void
.end method
