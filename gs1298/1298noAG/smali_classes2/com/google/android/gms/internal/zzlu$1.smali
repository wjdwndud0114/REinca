.class Lcom/google/android/gms/internal/zzlu$1;
.super Lcom/google/android/gms/internal/zzlt$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlu;->zzaG(Ljava/lang/String;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzQg:Ljava/lang/String;

.field final synthetic zzQh:Lcom/google/android/gms/internal/zzlu$zzb;

.field final synthetic zzQi:Lcom/google/android/gms/internal/zzqc;

.field final synthetic zzQj:Lcom/google/android/gms/internal/zzlu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlu;Ljava/lang/String;Lcom/google/android/gms/internal/zzlu$zzb;Lcom/google/android/gms/internal/zzqc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlu$1;->zzQj:Lcom/google/android/gms/internal/zzlu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlu$1;->zzQg:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlu$1;->zzQh:Lcom/google/android/gms/internal/zzlu$zzb;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzlu$1;->zzQi:Lcom/google/android/gms/internal/zzqc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlt$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zze(Lcom/google/android/gms/internal/zzjb;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzlu$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzlu$1$1;-><init>(Lcom/google/android/gms/internal/zzlu$1;Lcom/google/android/gms/internal/zzjb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlu$1;->zzQh:Lcom/google/android/gms/internal/zzlu$zzb;

    iput-object v0, v1, Lcom/google/android/gms/internal/zzlu$zzb;->zzQz:Lcom/google/android/gms/internal/zzhx;

    const-string v1, "/nativeAdPreProcess"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/zzjb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlu$1;->zzQj:Lcom/google/android/gms/internal/zzlu;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlu;->zza(Lcom/google/android/gms/internal/zzlu;)Lcom/google/android/gms/internal/zzov$zza;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzov$zza;->zzVB:Lcom/google/android/gms/internal/zzmk;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmk;->body:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ads_id"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlu$1;->zzQg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "google.afma.nativeAds.preProcessJsonGmsg"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/zzjb;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while invoking javascript"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpe;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlu$1;->zzQi:Lcom/google/android/gms/internal/zzqc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqc;->zzh(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public zziO()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlu$1;->zzQi:Lcom/google/android/gms/internal/zzqc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqc;->zzh(Ljava/lang/Object;)V

    return-void
.end method
