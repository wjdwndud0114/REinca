.class public Lcom/google/android/gms/ads/internal/zzl;
.super Lcom/google/android/gms/ads/internal/zzc;

# interfaces
.implements Lcom/google/android/gms/internal/zzib;
.implements Lcom/google/android/gms/internal/zzig$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/zzl$zza;
    }
.end annotation


# instance fields
.field private zztA:I

.field private zztB:Z

.field private zztC:F

.field protected transient zztz:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzec;Ljava/lang/String;Lcom/google/android/gms/internal/zzjs;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/ads/internal/zzd;)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzec;Ljava/lang/String;Lcom/google/android/gms/internal/zzjs;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/ads/internal/zzd;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztA:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztz:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztB:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/zzl;)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztC:F

    return v0
.end method

.method private zzb(Landroid/os/Bundle;)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcJ()Lcom/google/android/gms/internal/zzpi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzw;->zzqr:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzw;->zzvf:Lcom/google/android/gms/internal/zzqa;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqa;->zzaZ:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzpi;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static zzc(Lcom/google/android/gms/internal/zzov$zza;)Lcom/google/android/gms/internal/zzov$zza;
    .locals 46

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzov$zza;->zzVB:Lcom/google/android/gms/internal/zzmk;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzna;->zzc(Lcom/google/android/gms/internal/zzmk;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "pubid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzov$zza;->zzSF:Lcom/google/android/gms/internal/zzmh;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzmh;->zzvd:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    new-instance v2, Lcom/google/android/gms/internal/zzji;

    const/4 v4, 0x0

    const-string v5, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    invoke-direct/range {v2 .. v19}, Lcom/google/android/gms/internal/zzji;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzov$zza;->zzVB:Lcom/google/android/gms/internal/zzmk;

    move-object/from16 v44, v0

    new-instance v45, Lcom/google/android/gms/internal/zzjj;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, v44

    iget-object v9, v0, Lcom/google/android/gms/internal/zzmk;->zzKb:Ljava/util/List;

    move-object/from16 v0, v44

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzmk;->zzKc:Z

    const-string v11, ""

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const-wide/16 v19, -0x1

    const/16 v21, 0x0

    move-object/from16 v2, v45

    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/internal/zzjj;-><init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;JIILjava/lang/String;IIJZ)V

    new-instance v2, Lcom/google/android/gms/internal/zzmk;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzov$zza;->zzSF:Lcom/google/android/gms/internal/zzmh;

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/google/android/gms/internal/zzmk;->zzNb:Ljava/lang/String;

    move-object/from16 v0, v44

    iget-object v5, v0, Lcom/google/android/gms/internal/zzmk;->body:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, v44

    iget-wide v8, v0, Lcom/google/android/gms/internal/zzmk;->zzRJ:J

    const/4 v10, 0x1

    move-object/from16 v0, v44

    iget-wide v11, v0, Lcom/google/android/gms/internal/zzmk;->zzRL:J

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, v44

    iget-wide v14, v0, Lcom/google/android/gms/internal/zzmk;->zzKe:J

    move-object/from16 v0, v44

    iget v0, v0, Lcom/google/android/gms/internal/zzmk;->orientation:I

    move/from16 v16, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk;->zzRN:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzmk;->zzRO:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk;->zzRP:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmk;->zzRQ:Z

    move/from16 v21, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk;->zzRR:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmk;->zzRT:Z

    move/from16 v24, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmk;->zzzn:Z

    move/from16 v25, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmk;->zzRl:Z

    move/from16 v26, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmk;->zzRU:Z

    move/from16 v27, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmk;->zzRV:Z

    move/from16 v28, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk;->zzRY:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmk;->zzzo:Z

    move/from16 v30, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmk;->zzzp:Z

    move/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v33

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v34

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmk;->zzSc:Z

    move/from16 v35, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk;->zzSd:Lcom/google/android/gms/internal/zzmm;

    move-object/from16 v36, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmk;->zzRB:Z

    move/from16 v37, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk;->zzRC:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk;->zzKb:Ljava/util/List;

    move-object/from16 v39, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmk;->zzKc:Z

    move/from16 v40, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk;->zzSe:Ljava/lang/String;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk;->zzSg:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmk;->zzSh:Z

    move/from16 v44, v0

    invoke-direct/range {v2 .. v44}, Lcom/google/android/gms/internal/zzmk;-><init>(Lcom/google/android/gms/internal/zzmh;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/internal/zzok;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmm;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/zzon;Ljava/lang/String;Z)V

    new-instance v4, Lcom/google/android/gms/internal/zzov$zza;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzov$zza;->zzSF:Lcom/google/android/gms/internal/zzmh;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzov$zza;->zzvj:Lcom/google/android/gms/internal/zzec;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/internal/zzov$zza;->errorCode:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzov$zza;->zzVv:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/zzov$zza;->zzVw:J

    const/4 v14, 0x0

    move-object v6, v2

    move-object/from16 v7, v45

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/internal/zzov$zza;-><init>(Lcom/google/android/gms/internal/zzmh;Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zzec;IJJLorg/json/JSONObject;)V

    :goto_0
    return-object v4

    :catch_0
    move-exception v2

    const-string v3, "Unable to generate ad state for an interstitial ad with pooling."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzpe;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v4, p0

    goto :goto_0
.end method


# virtual methods
.method public showInterstitial()V
    .locals 10

    const/4 v5, -0x1

    const-string v0, "showInterstitial must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    if-nez v0, :cond_1

    const-string v0, "The interstitial has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpe;->zzbe(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzfx;->zzCR:Lcom/google/android/gms/internal/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzft;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzqr:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzqr:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zztz:Z

    if-nez v1, :cond_2

    const-string v1, "It is not recommended to show an interstitial before onAdLoaded completes."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpe;->zzbe(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "action"

    const-string v3, "show_interstitial_before_load_finish"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/zzl;->zzb(Landroid/os/Bundle;)V

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcJ()Lcom/google/android/gms/internal/zzpi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzw;->zzqr:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzpi;->zzE(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "It is not recommended to show an interstitial when app is not in foreground."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpe;->zzbe(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action"

    const-string v2, "show_interstitial_app_not_in_foreground"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/zzl;->zzb(Landroid/os/Bundle;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzw;->zzdn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzov;->zzRK:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzov;->zzKB:Lcom/google/android/gms/internal/zzjt;

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzov;->zzKB:Lcom/google/android/gms/internal/zzjt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjt;->showInterstitial()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpe;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzl;->zzck()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzqr:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzov;->zzMZ:Lcom/google/android/gms/internal/zzqp;

    if-nez v0, :cond_6

    const-string v0, "The interstitial failed to load."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpe;->zzbe(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzov;->zzMZ:Lcom/google/android/gms/internal/zzqp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqp;->zzkZ()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "The interstitial is already showing."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpe;->zzbe(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzov;->zzMZ:Lcom/google/android/gms/internal/zzqp;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzqp;->zzJ(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzov;->zzVp:Lorg/json/JSONObject;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsy:Lcom/google/android/gms/internal/zzcp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzw;->zzvj:Lcom/google/android/gms/internal/zzec;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcp;->zza(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzov;)V

    :cond_8
    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzyA()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzov;->zzdz()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lcom/google/android/gms/internal/zzcv;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzw;->zzqr:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzov;->zzMZ:Lcom/google/android/gms/internal/zzqp;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzqp;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzcv;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/zzov;->zzMZ:Lcom/google/android/gms/internal/zzqp;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcv;->zza(Lcom/google/android/gms/internal/zzcv$zzb;)V

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zztH:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcJ()Lcom/google/android/gms/internal/zzpi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzw;->zzqr:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpi;->zzF(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzde()Lcom/google/android/gms/internal/zzpr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpr;->zzb(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztA:I

    sget-object v0, Lcom/google/android/gms/internal/zzfx;->zzDJ:Lcom/google/android/gms/internal/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzft;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    new-instance v0, Lcom/google/android/gms/ads/internal/zzl$zza;

    iget v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zztA:I

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/zzl$zza;-><init>(Lcom/google/android/gms/ads/internal/zzl;I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpd;->zziw()Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    iget-object v1, v0, Lcom/google/android/gms/internal/zzov;->zzMZ:Lcom/google/android/gms/internal/zzqp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqp;->zzkV()Lcom/google/android/gms/internal/zzqq;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/zzl$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/zzl$1;-><init>(Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/internal/zzov;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzqq;->zza(Lcom/google/android/gms/internal/zzqq$zzc;)V

    goto :goto_2

    :cond_b
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_3

    :cond_c
    new-instance v0, Lcom/google/android/gms/ads/internal/zzm;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/zzw;->zztH:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzl;->zzcj()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzm;-><init>(ZZZFI)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzov;->zzMZ:Lcom/google/android/gms/internal/zzqp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqp;->getRequestedOrientation()I

    move-result v6

    if-ne v6, v5, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    iget v6, v1, Lcom/google/android/gms/internal/zzov;->orientation:I

    :cond_d
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    iget-object v5, v2, Lcom/google/android/gms/internal/zzov;->zzMZ:Lcom/google/android/gms/internal/zzqp;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/zzw;->zzvf:Lcom/google/android/gms/internal/zzqa;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    iget-object v8, v2, Lcom/google/android/gms/internal/zzov;->zzRP:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/zzdt;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzqp;ILcom/google/android/gms/internal/zzqa;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzm;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcH()Lcom/google/android/gms/ads/internal/overlay/zzf;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzw;->zzqr:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/internal/overlay/zzf;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    goto/16 :goto_0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzov$zza;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzop;)Lcom/google/android/gms/internal/zzqp;
    .locals 12
    .param p2    # Lcom/google/android/gms/ads/internal/zze;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/zzop;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v10, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcK()Lcom/google/android/gms/internal/zzqr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzw;->zzqr:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzw;->zzvj:Lcom/google/android/gms/internal/zzec;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v5, v4, Lcom/google/android/gms/ads/internal/zzw;->zzve:Lcom/google/android/gms/internal/zzav;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/zzw;->zzvf:Lcom/google/android/gms/internal/zzqa;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsr:Lcom/google/android/gms/internal/zzgf;

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsz:Lcom/google/android/gms/ads/internal/zzd;

    move v4, v3

    move-object v8, p0

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/zzqr;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzec;ZZLcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zzgf;Lcom/google/android/gms/ads/internal/zzt;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzqp;

    move-result-object v11

    invoke-interface {v11}, Lcom/google/android/gms/internal/zzqp;->zzkV()Lcom/google/android/gms/internal/zzqq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzfx;->zzCh:Lcom/google/android/gms/internal/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzft;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p0

    move-object v2, v10

    move-object v3, p0

    move-object v4, p0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p2

    move-object v9, v10

    move-object v10, p3

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/internal/zzqq;->zza(Lcom/google/android/gms/internal/zzdt;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/internal/zzht;Lcom/google/android/gms/ads/internal/overlay/zzq;ZLcom/google/android/gms/internal/zzhz;Lcom/google/android/gms/internal/zzib;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzkp;Lcom/google/android/gms/internal/zzop;)V

    invoke-virtual {p0, v11}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/internal/zzjb;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzov$zza;->zzSF:Lcom/google/android/gms/internal/zzmh;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmh;->zzRr:Ljava/lang/String;

    invoke-interface {v11, v0}, Lcom/google/android/gms/internal/zzqp;->zzbg(Ljava/lang/String;)V

    invoke-static {v11, p0}, Lcom/google/android/gms/internal/zzig;->zza(Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzig$zza;)V

    return-object v11
.end method

.method public zza(Lcom/google/android/gms/internal/zzov$zza;Lcom/google/android/gms/internal/zzgf;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzfx;->zzCA:Lcom/google/android/gms/internal/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzft;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzov$zza;Lcom/google/android/gms/internal/zzgf;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/zzov$zza;->errorCode:I

    const/4 v3, -0x2

    if-eq v0, v3, :cond_1

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzov$zza;Lcom/google/android/gms/internal/zzgf;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/zzov$zza;->zzSF:Lcom/google/android/gms/internal/zzmh;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmh;->zzRd:Lcom/google/android/gms/internal/zzdy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdy;->zzyP:Landroid/os/Bundle;

    const-string v3, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "gw"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    move v0, v2

    :goto_1
    iget-object v3, p1, Lcom/google/android/gms/internal/zzov$zza;->zzVB:Lcom/google/android/gms/internal/zzmk;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzmk;->zzRK:Z

    if-nez v3, :cond_5

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzl;->zzc(Lcom/google/android/gms/internal/zzov$zza;)Lcom/google/android/gms/internal/zzov$zza;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvl:Lcom/google/android/gms/internal/zzov$zza;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvl:Lcom/google/android/gms/internal/zzov$zza;

    invoke-super {p0, v0, p2}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzov$zza;Lcom/google/android/gms/internal/zzgf;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2
.end method

.method public zza(ZF)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzl;->zztB:Z

    iput p2, p0, Lcom/google/android/gms/ads/internal/zzl;->zztC:F

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzdy;Lcom/google/android/gms/internal/zzgf;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    if-eqz v0, :cond_0

    const-string v0, "An interstitial is already loading. Aborting."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpe;->zzbe(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzdy;Lcom/google/android/gms/internal/zzgf;)Z

    move-result v0

    goto :goto_0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzdy;Lcom/google/android/gms/internal/zzov;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzw;->zzdm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/zzov;->zzMZ:Lcom/google/android/gms/internal/zzqp;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcL()Lcom/google/android/gms/internal/zzpj;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzov;->zzMZ:Lcom/google/android/gms/internal/zzqp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpj;->zzl(Lcom/google/android/gms/internal/zzqp;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsv:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzs;->zzcv()Z

    move-result v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzov;Lcom/google/android/gms/internal/zzov;)Z
    .locals 3
    .param p1    # Lcom/google/android/gms/internal/zzov;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzov;Lcom/google/android/gms/internal/zzov;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzw;->zzdm()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvE:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/google/android/gms/internal/zzov;->zzVp:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsy:Lcom/google/android/gms/internal/zzcp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzw;->zzvj:Lcom/google/android/gms/internal/zzec;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzw;->zzvE:Landroid/view/View;

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/gms/internal/zzcp;->zza(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzov;Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzok;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzov;->zzSb:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcJ()Lcom/google/android/gms/internal/zzpi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzw;->zzqr:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzw;->zzvf:Lcom/google/android/gms/internal/zzqa;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqa;->zzaZ:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzov;->zzSb:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzpi;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzov;->zzRZ:Lcom/google/android/gms/internal/zzok;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    iget-object p1, v0, Lcom/google/android/gms/internal/zzov;->zzRZ:Lcom/google/android/gms/internal/zzok;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/internal/zzok;)V

    return-void
.end method

.method protected zzbH()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzl;->zzck()V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzc;->zzbH()V

    return-void
.end method

.method protected zzbK()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzc;->zzbK()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztz:Z

    return-void
.end method

.method public zzbO()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzl;->recordImpression()V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzc;->zzbO()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzov;->zzMZ:Lcom/google/android/gms/internal/zzqp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzov;->zzMZ:Lcom/google/android/gms/internal/zzqp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqp;->zzkV()Lcom/google/android/gms/internal/zzqq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqq;->zzlt()V

    :cond_0
    return-void
.end method

.method protected zzcj()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzqr:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzqr:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_2

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_2

    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Rect;->top:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public zzck()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzde()Lcom/google/android/gms/internal/zzpr;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zztA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpr;->zzb(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzw;->zzdm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzw;->zzdj()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iput-boolean v2, v0, Lcom/google/android/gms/ads/internal/zzw;->zztH:Z

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zztz:Z

    :cond_0
    return-void
.end method

.method public zzcl()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzov;->zzVu:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcJ()Lcom/google/android/gms/internal/zzpi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzw;->zzqr:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzw;->zzvf:Lcom/google/android/gms/internal/zzqa;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqa;->zzaZ:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzw;->zzvk:Lcom/google/android/gms/internal/zzov;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzov;->zzVu:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzpi;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzl;->zzbL()V

    return-void
.end method

.method public zzg(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsw:Lcom/google/android/gms/ads/internal/zzw;

    iput-boolean p1, v0, Lcom/google/android/gms/ads/internal/zzw;->zztH:Z

    return-void
.end method
