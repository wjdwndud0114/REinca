.class public final Lcom/tapjoy/internal/gi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/tapjoy/internal/q;

.field public final b:Lcom/tapjoy/internal/q;

.field private final c:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 27
    const-string v1, "fiverocks"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gi;->c:Landroid/content/SharedPreferences;

    .line 28
    new-instance v0, Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/gi;->c:Landroid/content/SharedPreferences;

    const-string v2, "noMoreToday.date"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/q;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gi;->a:Lcom/tapjoy/internal/q;

    .line 29
    new-instance v0, Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/gi;->c:Landroid/content/SharedPreferences;

    const-string v2, "noMoreToday.actionIds"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/q;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gi;->b:Lcom/tapjoy/internal/q;

    .line 30
    invoke-virtual {p0}, Lcom/tapjoy/internal/gi;->b()V

    .line 31
    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->a:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    .line 39
    if-nez v0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-static {}, Lcom/tapjoy/internal/gi;->a()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->a:Lcom/tapjoy/internal/q;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/tapjoy/internal/gi;->b:Lcom/tapjoy/internal/q;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
