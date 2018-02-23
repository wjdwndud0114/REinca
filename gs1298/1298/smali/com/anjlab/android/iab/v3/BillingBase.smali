.class Lcom/anjlab/android/iab/v3/BillingBase;
.super Ljava/lang/Object;
.source "BillingBase.java"


# instance fields
.field private contextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/BillingBase;->contextReference:Ljava/lang/ref/WeakReference;

    .line 30
    return-void
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingBase;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingBase;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingBase;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method protected getPreferencesBaseKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingBase;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingBase;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 84
    .end local p2    # "defValue":Z
    :cond_0
    return p2
.end method

.method protected loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingBase;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 66
    .end local p2    # "defValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public release()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingBase;->contextReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingBase;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 49
    :cond_0
    return-void
.end method

.method protected saveBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingBase;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 73
    .local v1, "spe":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    const/4 v2, 0x1

    .line 77
    .end local v1    # "spe":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected saveString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingBase;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 55
    .local v1, "spe":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    const/4 v2, 0x1

    .line 59
    .end local v1    # "spe":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
