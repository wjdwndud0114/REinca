.class public Lcom/google/android/gms/internal/zzmx;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation


# instance fields
.field public zzRf:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzRk:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzRs:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public zzSC:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzSD:Lcom/google/android/gms/internal/zznj$zza;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzSE:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzSF:Lcom/google/android/gms/internal/zzmh;

.field public zzSG:Lcom/google/android/gms/internal/zznf;

.field public zzSH:Lorg/json/JSONObject;

.field public zzyN:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmx;->zzSH:Lorg/json/JSONObject;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmx;->zzRs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zznf;)Lcom/google/android/gms/internal/zzmx;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmx;->zzSG:Lcom/google/android/gms/internal/zznf;

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zznj$zza;)Lcom/google/android/gms/internal/zzmx;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmx;->zzSD:Lcom/google/android/gms/internal/zznj$zza;

    return-object p0
.end method

.method public zzaJ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzmx;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmx;->zzRf:Ljava/lang/String;

    return-object p0
.end method

.method public zzaK(Ljava/lang/String;)Lcom/google/android/gms/internal/zzmx;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmx;->zzSE:Ljava/lang/String;

    return-object p0
.end method

.method public zzc(Landroid/location/Location;)Lcom/google/android/gms/internal/zzmx;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmx;->zzyN:Landroid/location/Location;

    return-object p0
.end method

.method public zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzmx;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmx;->zzSC:Landroid/os/Bundle;

    return-object p0
.end method

.method public zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzmx;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmx;->zzRk:Landroid/os/Bundle;

    return-object p0
.end method

.method public zzf(Lcom/google/android/gms/internal/zzmh;)Lcom/google/android/gms/internal/zzmx;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmx;->zzSF:Lcom/google/android/gms/internal/zzmh;

    return-object p0
.end method

.method public zzh(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzmx;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmx;->zzSH:Lorg/json/JSONObject;

    return-object p0
.end method

.method public zzk(Ljava/util/List;)Lcom/google/android/gms/internal/zzmx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/zzmx;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmx;->zzRs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzmx;->zzRs:Ljava/util/List;

    return-object p0
.end method
