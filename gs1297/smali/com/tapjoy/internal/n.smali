.class public final Lcom/tapjoy/internal/n;
.super Lcom/tapjoy/internal/o;
.source "SourceFile"


# instance fields
.field private final c:J


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/o;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tapjoy/internal/n;->c:J

    .line 12
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tapjoy/internal/n;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/tapjoy/internal/n;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tapjoy/internal/n;->c:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tapjoy/internal/n;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/SharedPreferences$Editor;J)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tapjoy/internal/n;->b:Ljava/lang/String;

    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tapjoy/internal/n;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/n;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 34
    return-void
.end method
