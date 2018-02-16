.class public Lcom/google/android/gms/internal/zzlw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlu$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzlu$zza",
        "<",
        "Lcom/google/android/gms/internal/zzgp;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzQH:Z

.field private final zzQI:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzlw;->zzQH:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzlw;->zzQI:Z

    return-void
.end method

.method private zzb(Lcom/google/android/gms/internal/zzqf;)Lcom/google/android/gms/internal/zzqp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqf",
            "<",
            "Lcom/google/android/gms/internal/zzqp;",
            ">;)",
            "Lcom/google/android/gms/internal/zzqp;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzfx;->zzDY:Lcom/google/android/gms/internal/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzft;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzqf;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqp;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "InterruptedException occurred while waiting for video to load"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpe;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    const-string v1, "Exception occurred while waiting for video to load"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpe;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public synthetic zza(Lcom/google/android/gms/internal/zzlu;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzgu$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzlw;->zzb(Lcom/google/android/gms/internal/zzlu;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzgp;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzlu;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzgp;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const-string v4, "images"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/gms/internal/zzlw;->zzQH:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/android/gms/internal/zzlw;->zzQI:Z

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzlu;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v2

    const-string v3, "app_icon"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/gms/internal/zzlw;->zzQH:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/zzlu;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzqf;

    move-result-object v6

    const-string v3, "video"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzlu;->zzc(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/zzqf;

    move-result-object v3

    invoke-virtual/range {p1 .. p2}, Lcom/google/android/gms/internal/zzlu;->zze(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzqf;

    move-result-object v12

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzqf;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzqf;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzgo;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/zzlw;->zzb(Lcom/google/android/gms/internal/zzqf;)Lcom/google/android/gms/internal/zzqp;

    move-result-object v15

    new-instance v2, Lcom/google/android/gms/internal/zzgp;

    const-string v3, "headline"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "body"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzgz;

    const-string v7, "call_to_action"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "rating"

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    const-string v10, "store"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "price"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v12}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/zzgm;

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    if-eqz v15, :cond_1

    invoke-interface {v15}, Lcom/google/android/gms/internal/zzqp;->zzlg()Lcom/google/android/gms/internal/zzqu;

    move-result-object v14

    :goto_1
    if-eqz v15, :cond_2

    invoke-interface {v15}, Lcom/google/android/gms/internal/zzqp;->getView()Landroid/view/View;

    move-result-object v15

    :goto_2
    invoke-direct/range {v2 .. v15}, Lcom/google/android/gms/internal/zzgp;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzgz;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgm;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzew;Landroid/view/View;)V

    return-object v2

    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    goto :goto_2
.end method
