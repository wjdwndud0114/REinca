.class Lcom/google/android/gms/internal/zzlu$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzhx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlu$1;->zze(Lcom/google/android/gms/internal/zzjb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzGz:Lcom/google/android/gms/internal/zzjb;

.field final synthetic zzQk:Lcom/google/android/gms/internal/zzlu$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlu$1;Lcom/google/android/gms/internal/zzjb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlu$1$1;->zzQk:Lcom/google/android/gms/internal/zzlu$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlu$1$1;->zzGz:Lcom/google/android/gms/internal/zzjb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqp;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_0
    const-string v0, "success"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlu$1$1;->zzQk:Lcom/google/android/gms/internal/zzlu$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzlu$1;->zzQg:Ljava/lang/String;

    const-string v3, "ads_id"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlu$1$1;->zzGz:Lcom/google/android/gms/internal/zzjb;

    const-string v2, "/nativeAdPreProcess"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzlu$1$1;->zzQk:Lcom/google/android/gms/internal/zzlu$1;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzlu$1;->zzQh:Lcom/google/android/gms/internal/zzlu$zzb;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzlu$zzb;->zzQz:Lcom/google/android/gms/internal/zzhx;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/zzjb;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlu$1$1;->zzQk:Lcom/google/android/gms/internal/zzlu$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzlu$1;->zzQi:Lcom/google/android/gms/internal/zzqc;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ads"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqc;->zzh(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Malformed native JSON response."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpe;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlu$1$1;->zzQk:Lcom/google/android/gms/internal/zzlu$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzlu$1;->zzQj:Lcom/google/android/gms/internal/zzlu;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/zzlu;->zzS(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlu$1$1;->zzQk:Lcom/google/android/gms/internal/zzlu$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzlu$1;->zzQj:Lcom/google/android/gms/internal/zzlu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlu;->zziQ()Z

    move-result v0

    const-string v1, "Unable to set the ad state error!"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlu$1$1;->zzQk:Lcom/google/android/gms/internal/zzlu$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzlu$1;->zzQi:Lcom/google/android/gms/internal/zzqc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqc;->zzh(Ljava/lang/Object;)V

    goto :goto_0
.end method
