.class final Lcom/igaworks/adbrix/json/JSON2ScheduleConverter$1;
.super Ljava/lang/Object;
.source "JSON2ScheduleConverter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/json/JSON2ScheduleConverter;->json2ScheduleV2(Landroid/content/Context;Ljava/lang/String;)Lcom/igaworks/adbrix/model/ScheduleContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$json:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/igaworks/adbrix/json/JSON2ScheduleConverter$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/igaworks/adbrix/json/JSON2ScheduleConverter$1;->val$json:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Lcom/igaworks/adbrix/db/ScheduleDAO;->getInstance()Lcom/igaworks/adbrix/db/ScheduleDAO;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adbrix/json/JSON2ScheduleConverter$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adbrix/json/JSON2ScheduleConverter$1;->val$json:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adbrix/db/ScheduleDAO;->saveSchedule(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    return-void
.end method
