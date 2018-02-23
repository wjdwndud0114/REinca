.class Lcom/google/android/gms/internal/zzlu$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlu;->zzd(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzlu$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzQj:Lcom/google/android/gms/internal/zzlu;

.field final synthetic zzQl:Lcom/google/android/gms/internal/zzqc;

.field final synthetic zzQm:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlu;Lcom/google/android/gms/internal/zzqc;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlu$2;->zzQj:Lcom/google/android/gms/internal/zzlu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlu$2;->zzQl:Lcom/google/android/gms/internal/zzqc;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlu$2;->zzQm:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlu$2;->zzQl:Lcom/google/android/gms/internal/zzqc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlu$2;->zzQj:Lcom/google/android/gms/internal/zzlu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlu;->zzb(Lcom/google/android/gms/internal/zzlu;)Lcom/google/android/gms/ads/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzr;->zzcs()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlu$2;->zzQm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzhm;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqc;->zzh(Ljava/lang/Object;)V

    return-void
.end method
