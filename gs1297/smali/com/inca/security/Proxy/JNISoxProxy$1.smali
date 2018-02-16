.class public final Lcom/inca/security/Proxy/JNISoxProxy$1;
.super Ljava/lang/Thread;
.source "lb"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inca/security/Proxy/JNISoxProxy;->loadSecureLibrary(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 38
    const-string v0, "/m\u0018p\u0018?P?Vy\u0005q\u001e?\tp\u0006p\u0018\"H<\u000cy\t|Z/H!)p\u001fs\u000e?\u0004p\u001e?\u001ew\u000f?\u0018z\u0007~\u0003q\u0003q\r?\t~\u001a~\tv\u001efJp\u000c?\u001ew\u000f?\u0006p\t~\u0006?\u0019k\u0005m\u000bx\u000f?\u001epJm\u001fqJk\u0002zJ~\u001aoJ~\u0019?\u000b?\u001em\u0003}\u000f1V0\u000cp\u0004kT"

    invoke-static {v0}, Lcom/inca/security/la;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u001bq"

    invoke-static {v2}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 73
    const-string v0, "\uc63b\ub932?P?Vy\u0005q\u001e?\tp\u0006p\u0018\"H<\u000cy\t|Z/H!\ub836\ucef3J\uc2bb\ud1ca\ub9b3\uc9aa\uc747J\ub0b7\uc72a?\uc6c3\ub7d6\uc71e?\ubdea\uc86e\ud532\uc5f3J\uc56e\uc72e?\uc28e\ud596J\ud57fJ\uc207J\uc5d9\uc2df\ub2d7\ub28e1V0\u000cp\u0004kT"

    invoke-static {v0}, Lcom/inca/security/la;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 187
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 71
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 18
    return-void

    .line 116
    :cond_1
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0013m"

    invoke-static {v2}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 4
    const-string v0, "Z\u0018m\u0005mJ%J#\u000cp\u0004kJ|\u0005s\u0005mW=Iy\u000c|\t/Z=T\u6254\u6750\u7ce4\u7eb5\u5b47\u50c2\u7a65\u959e\u4e12\u8dd9\uff13\u714b\u6cca\u579d\u8853+o\u001as\u0003|\u000bk\u0003p\u0004\u301dV0\u000cp\u0004kT"

    invoke-static {v0}, Lcom/inca/security/la;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_2
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0004t"

    invoke-static {v2}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 113
    const-string v0, "Z\u0018m\u0005mJ%J#\u000cp\u0004kJ|\u0005s\u0005mW=Iy\u000c|\t/Z=T\u6254\u6a35\u7ce4\u7d1b\u5b47\u5158\u7a65\u95f9\u4e12\u8dd9\uff13\u714b\u6cca\u579d\u8853+o\u001as\u0003|\u000bk\u0003p\u0004\u301dV0\u000cp\u0004kT"

    invoke-static {v0}, Lcom/inca/security/la;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_3
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u001as"

    invoke-static {v2}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 34
    const-string v0, "\u30c2\u30f6\u3096?J%J#\u000cp\u0004kJ|\u0005s\u0005mW=Iy\u000c|\t/Z=T\u30f2\u3096\u30b4\u3081\u30a6\u30a2\u30f3\u3096\u30a7\u3004\u6b94\u3009\u3040\u5bd3\u91d0\u3026\u4e12\u8dd9\u3078\u30c8\u30c8\u3080\u308d\u5bf5\u8853\u300d\u3052\u3014\u3044\u30f9\u301dV0\u000cp\u0004kT"

    invoke-static {v0}, Lcom/inca/security/la;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
