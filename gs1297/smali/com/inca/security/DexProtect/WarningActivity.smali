.class public Lcom/inca/security/DexProtect/WarningActivity;
.super Landroid/app/Activity;
.source "wb"


# instance fields
.field private synthetic IiIiIiiIii:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/inca/security/DexProtect/WarningActivity;->IiIiIiiIii:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/DexProtect/WarningActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/DexProtect/WarningActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/inca/security/DexProtect/WarningActivity;->IiIiIiiIii:Landroid/app/Activity;

    return-object v0
.end method

.method private synthetic IiiiIIIIii()Ljava/lang/String;
    .locals 7

    .prologue
    .line 152
    :try_start_0
    const-string v0, "B>G\"L9G~@?M$F>W~`?M$F(W"

    invoke-static {v0}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 119
    const-string v0, "S/@\u000bD:X#W+@#[$}$R%"

    invoke-static {v0}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lcom/inca/security/DexProtect/WarningActivity;->IiIiIiiIii:Landroid/app/Activity;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 130
    const-string v0, "1M4Q?J4\r1S \r\u0011@$J&J$Z"

    invoke-static {v0}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 32
    const-string v0, "-Q>d+W!U-Q\u0007U$U-Q8"

    invoke-static {v0}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 190
    iget-object v3, p0, Lcom/inca/security/DexProtect/WarningActivity;->IiIiIiiIii:Landroid/app/Activity;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    if-eqz v1, :cond_0

    .line 199
    const-string v2, "B>G\"L9G~@?M$F>W~S=\r\u0000B3H1D5n1M1D5Q"

    invoke-static {v2}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 8
    const-string v3, "-Q>u:D&])U>]%Z\u0006U(Q&"

    invoke-static {v3}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-string v6, "1M4Q?J4\r3L>W5M$\r N~b S<J3B$J?M\u0019M6L"

    invoke-static {v6}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 159
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/inca/security/DexProtect/WarningActivity;->IiIiIiiIii:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    const-string v1, "\u001fZ!Z%C$"

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    invoke-static {v1}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 182
    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    iput-object p0, p0, Lcom/inca/security/DexProtect/WarningActivity;->IiIiIiiIii:Landroid/app/Activity;

    .line 44
    invoke-virtual {p0, v0}, Lcom/inca/security/DexProtect/WarningActivity;->requestWindowFeature(I)Z

    .line 106
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const-string v1, "\u0004K9PpB SpT9O<\u00032FpW5Q=J>B$F4\u00032F3B%P5\u00031\u0003#F3V\"J$ZpS?O9@)\u0003&J?O1W9L>\u00038B#\u00032F5MpG5W5@$F4\u0002"

    .line 181
    const v2, 0x3f333333    # 0.7f

    const/16 v3, 0x402

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 67
    invoke-virtual {p0}, Lcom/inca/security/DexProtect/WarningActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 161
    invoke-static {v1}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_%"

    invoke-static {v2}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    const-string v0, "\ubcd7\uc518\u0003\uc845\ucc66p\uc727\ubc48\uc757p\ud0f3\uc990\ub43b\uc5e4\u0003\ud654\uc78fp\uc552\uc714\u0003\uc8d5\ub8ef\ud539\ub2eb\ub2b4\r"

    invoke-static {v0}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_0
    :goto_0
    const-string v1, "j\u000ej"

    invoke-static {v1}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, ";L"

    invoke-static {v3}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    const-string v1, "\uc59a\u0014\ub34a\ud568j"

    invoke-static {v1}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/inca/security/DexProtect/WarningActivity;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 81
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 168
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 16
    new-instance v0, Lcom/inca/security/DexProtect/WarningActivity$1;

    invoke-direct {v0, p0}, Lcom/inca/security/DexProtect/WarningActivity$1;-><init>(Lcom/inca/security/DexProtect/WarningActivity;)V

    .line 40
    invoke-virtual {v0}, Lcom/inca/security/DexProtect/WarningActivity$1;->start()V

    .line 157
    return-void

    .line 22
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0\\\u0015w\u0004"

    invoke-static {v2}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 97
    const-string v0, "\u5baa\u8895\u5eb7\u7578\u7a28\u5edf\u542d\u7b7c\u4e23\u6b71\u8ff3\u881c\u65d5\u5f95\u9858\u8f8e\u6386\u5260\u7f72\u7e8c\u3021"

    invoke-static {v0}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
