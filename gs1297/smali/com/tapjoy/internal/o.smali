.class public abstract Lcom/tapjoy/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/SharedPreferences;

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/SharedPreferences;

    .line 12
    iput-object p2, p0, Lcom/tapjoy/internal/o;->b:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/o;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 21
    return-void
.end method
