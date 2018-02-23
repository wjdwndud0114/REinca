.class public final Lcom/tapjoy/internal/k;
.super Lcom/tapjoy/internal/o;
.source "SourceFile"


# instance fields
.field private final c:D


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/o;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tapjoy/internal/k;->c:D

    .line 12
    return-void
.end method


# virtual methods
.method public final a()D
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tapjoy/internal/k;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/tapjoy/internal/k;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 28
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    :cond_0
    iget-wide v0, p0, Lcom/tapjoy/internal/k;->c:D

    goto :goto_0
.end method

.method public final a(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tapjoy/internal/k;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/SharedPreferences$Editor;D)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tapjoy/internal/k;->b:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method
