.class final Lcom/tapjoy/internal/gb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/gb;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    invoke-static {p1}, Lcom/tapjoy/internal/gj;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gj;

    move-result-object v0

    .line 1207
    iget-object v0, v0, Lcom/tapjoy/internal/gj;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.senderIds"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    return-object v0
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 115
    invoke-static {p1}, Lcom/tapjoy/internal/gj;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gj;

    move-result-object v0

    .line 1235
    iget-object v0, v0, Lcom/tapjoy/internal/gj;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.appVersion"

    invoke-static {v0, v1, p2}, Lcom/tapjoy/internal/p;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)Z

    .line 116
    return-void
.end method

.method public final a(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 135
    invoke-static {p1}, Lcom/tapjoy/internal/gj;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gj;

    move-result-object v0

    .line 1251
    iget-object v0, v0, Lcom/tapjoy/internal/gj;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.onServerExpirationTime"

    .line 2023
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2024
    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2025
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 85
    invoke-static {p1}, Lcom/tapjoy/internal/gj;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gj;

    move-result-object v0

    .line 1211
    iget-object v0, v0, Lcom/tapjoy/internal/gj;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.senderIds"

    invoke-static {v0, v1, p2}, Lcom/tapjoy/internal/p;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    .line 86
    return-void
.end method

.method public final a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 105
    invoke-static {p1}, Lcom/tapjoy/internal/gj;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gj;

    move-result-object v0

    .line 1227
    iget-object v0, v0, Lcom/tapjoy/internal/gj;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.stale"

    invoke-static {v0, v1, p2}, Lcom/tapjoy/internal/p;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    .line 106
    return-void
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    invoke-static {p1}, Lcom/tapjoy/internal/gj;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gj;

    move-result-object v0

    .line 1215
    iget-object v0, v0, Lcom/tapjoy/internal/gj;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.regId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    return-object v0
.end method

.method public final b(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 150
    invoke-static {p1}, Lcom/tapjoy/internal/gj;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gj;

    move-result-object v0

    .line 2259
    iget-object v0, v0, Lcom/tapjoy/internal/gj;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.backoff"

    invoke-static {v0, v1, p2}, Lcom/tapjoy/internal/p;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)Z

    .line 151
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 95
    invoke-static {p1}, Lcom/tapjoy/internal/gj;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gj;

    move-result-object v0

    .line 1219
    iget-object v0, v0, Lcom/tapjoy/internal/gj;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.regId"

    invoke-static {v0, v1, p2}, Lcom/tapjoy/internal/p;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    return-void
.end method

.method public final b(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 125
    invoke-static {p1}, Lcom/tapjoy/internal/gj;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/gj;->a(Z)V

    .line 126
    return-void
.end method

.method public final c(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 100
    invoke-static {p1}, Lcom/tapjoy/internal/gj;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gj;

    move-result-object v0

    .line 1223
    iget-object v0, v0, Lcom/tapjoy/internal/gj;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.stale"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 100
    return v0
.end method

.method public final d(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 110
    invoke-static {p1}, Lcom/tapjoy/internal/gj;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gj;

    move-result-object v0

    .line 1231
    iget-object v0, v0, Lcom/tapjoy/internal/gj;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.appVersion"

    const/high16 v2, -0x80000000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 110
    return v0
.end method

.method public final e(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 120
    invoke-static {p1}, Lcom/tapjoy/internal/gj;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gj;

    move-result-object v0

    .line 1239
    iget-object v0, v0, Lcom/tapjoy/internal/gj;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.onServer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 120
    return v0
.end method

.method public final f(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 130
    invoke-static {p1}, Lcom/tapjoy/internal/gj;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gj;

    move-result-object v0

    .line 1247
    iget-object v0, v0, Lcom/tapjoy/internal/gj;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.onServerExpirationTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 130
    return-wide v0
.end method

.method public final g(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 145
    invoke-static {p1}, Lcom/tapjoy/internal/gj;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gj;

    move-result-object v0

    .line 2255
    iget-object v0, v0, Lcom/tapjoy/internal/gj;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.backoff"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 145
    return v0
.end method
