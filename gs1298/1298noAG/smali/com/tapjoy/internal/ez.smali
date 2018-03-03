.class public final Lcom/tapjoy/internal/ez;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/tapjoy/internal/ez;

.field private static c:Lcom/tapjoy/internal/ez;


# instance fields
.field public final a:Lcom/tapjoy/internal/ex;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/tapjoy/internal/ez;

    invoke-direct {v0}, Lcom/tapjoy/internal/ez;-><init>()V

    .line 28
    sput-object v0, Lcom/tapjoy/internal/ez;->b:Lcom/tapjoy/internal/ez;

    sput-object v0, Lcom/tapjoy/internal/ez;->c:Lcom/tapjoy/internal/ez;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/tapjoy/internal/ex;

    invoke-direct {v0}, Lcom/tapjoy/internal/ex;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ez;->a:Lcom/tapjoy/internal/ex;

    .line 67
    return-void
.end method

.method public static a()Lcom/tapjoy/internal/ez;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/tapjoy/internal/ez;->c:Lcom/tapjoy/internal/ez;

    return-object v0
.end method

.method public static b()Lcom/tapjoy/internal/ex;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/tapjoy/internal/ez;->c:Lcom/tapjoy/internal/ez;

    iget-object v0, v0, Lcom/tapjoy/internal/ez;->a:Lcom/tapjoy/internal/ex;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 70
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/ez;->d:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 71
    iput-object p1, p0, Lcom/tapjoy/internal/ez;->d:Landroid/content/Context;

    .line 1082
    invoke-virtual {p0}, Lcom/tapjoy/internal/ez;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1083
    invoke-virtual {p0}, Lcom/tapjoy/internal/ez;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "configurations"

    const/4 v3, 0x0

    .line 1084
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1085
    if-eqz v1, :cond_0

    .line 1088
    :try_start_1
    invoke-static {v1}, Lcom/tapjoy/internal/bs;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bs;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 1090
    :try_start_2
    invoke-virtual {v1}, Lcom/tapjoy/internal/bs;->d()Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 1092
    :try_start_3
    invoke-virtual {v1}, Lcom/tapjoy/internal/bs;->close()V

    .line 1095
    iget-object v1, p0, Lcom/tapjoy/internal/ez;->a:Lcom/tapjoy/internal/ex;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/ex;->a(Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1101
    :cond_0
    :goto_0
    :try_start_4
    new-instance v0, Lcom/tapjoy/internal/ez$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/ez$1;-><init>(Lcom/tapjoy/internal/ez;)V

    .line 1109
    iget-object v1, p0, Lcom/tapjoy/internal/ez;->a:Lcom/tapjoy/internal/ex;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/ex;->addObserver(Ljava/util/Observer;)V

    .line 1110
    iget-object v1, p0, Lcom/tapjoy/internal/ez;->a:Lcom/tapjoy/internal/ex;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 75
    :cond_1
    monitor-exit p0

    return-void

    .line 1092
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Lcom/tapjoy/internal/bs;->close()V

    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1097
    :catch_0
    move-exception v1

    :try_start_6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "configurations"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 70
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tapjoy/internal/ez;->d:Landroid/content/Context;

    const-string v1, "tjcPrefrences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
