.class final Lcom/tapjoy/internal/fa$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Hashtable;

.field final synthetic d:Lcom/tapjoy/internal/fa;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/fa;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1

    .prologue
    .line 248
    iput-object p1, p0, Lcom/tapjoy/internal/fa$a;->d:Lcom/tapjoy/internal/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1256
    const/4 v0, 0x0

    .line 1257
    if-eqz p2, :cond_0

    .line 2052
    instance-of v0, p2, Landroid/app/Application;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 1261
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    move-object p2, v0

    .line 249
    :cond_1
    iput-object p2, p0, Lcom/tapjoy/internal/fa$a;->a:Landroid/content/Context;

    .line 250
    iput-object p3, p0, Lcom/tapjoy/internal/fa$a;->b:Ljava/lang/String;

    .line 251
    iput-object p4, p0, Lcom/tapjoy/internal/fa$a;->c:Ljava/util/Hashtable;

    .line 252
    return-void

    .line 2055
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method
