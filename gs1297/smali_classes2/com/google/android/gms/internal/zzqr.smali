.class public Lcom/google/android/gms/internal/zzqr;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzec;ZZLcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzqa;)Lcom/google/android/gms/internal/zzqp;
    .locals 10
    .param p5    # Lcom/google/android/gms/internal/zzav;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/zzqr;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzec;ZZLcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zzgf;Lcom/google/android/gms/ads/internal/zzt;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzqp;

    move-result-object v0

    return-object v0
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzec;ZZLcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zzgf;Lcom/google/android/gms/ads/internal/zzt;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzqp;
    .locals 2
    .param p5    # Lcom/google/android/gms/internal/zzav;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/internal/zzqs;

    invoke-static/range {p1 .. p9}, Lcom/google/android/gms/internal/zzqt;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzec;ZZLcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zzgf;Lcom/google/android/gms/ads/internal/zzt;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzqt;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzqs;-><init>(Lcom/google/android/gms/internal/zzqp;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcL()Lcom/google/android/gms/internal/zzpj;

    move-result-object v1

    invoke-virtual {v1, v0, p4}, Lcom/google/android/gms/internal/zzpj;->zzb(Lcom/google/android/gms/internal/zzqp;Z)Lcom/google/android/gms/internal/zzqq;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzqp;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcL()Lcom/google/android/gms/internal/zzpj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzpj;->zzn(Lcom/google/android/gms/internal/zzqp;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzqp;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v0
.end method
