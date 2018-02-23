.class final Lcom/tapjoy/internal/a$h;
.super Lcom/tapjoy/internal/a$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/tapjoy/internal/a$g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/a$d;)Landroid/app/Notification;
    .locals 6

    .prologue
    .line 100
    iget-object v0, p1, Lcom/tapjoy/internal/a$d;->r:Landroid/app/Notification;

    .line 101
    iget-object v1, p1, Lcom/tapjoy/internal/a$d;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/tapjoy/internal/a$d;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/tapjoy/internal/a$d;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcom/tapjoy/internal/a$d;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 103
    iget-object v1, p1, Lcom/tapjoy/internal/a$d;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/tapjoy/internal/a$d;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/tapjoy/internal/a$d;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcom/tapjoy/internal/a$d;->d:Landroid/app/PendingIntent;

    iget-object v5, p1, Lcom/tapjoy/internal/a$d;->e:Landroid/app/PendingIntent;

    .line 1027
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1028
    iput-object v5, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 106
    iget v1, p1, Lcom/tapjoy/internal/a$d;->j:I

    if-lez v1, :cond_0

    .line 107
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 109
    :cond_0
    return-object v0
.end method
