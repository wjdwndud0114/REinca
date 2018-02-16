.class Lcom/google/android/gms/tagmanager/zzx$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzx;->zza(Lcom/google/android/gms/tagmanager/DataLayer$zzc$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbDP:Lcom/google/android/gms/tagmanager/zzx;

.field final synthetic zzbDQ:Lcom/google/android/gms/tagmanager/DataLayer$zzc$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzx;Lcom/google/android/gms/tagmanager/DataLayer$zzc$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzx$2;->zzbDP:Lcom/google/android/gms/tagmanager/zzx;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzx$2;->zzbDQ:Lcom/google/android/gms/tagmanager/DataLayer$zzc$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzx$2;->zzbDQ:Lcom/google/android/gms/tagmanager/DataLayer$zzc$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzx$2;->zzbDP:Lcom/google/android/gms/tagmanager/zzx;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzx;->zza(Lcom/google/android/gms/tagmanager/zzx;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer$zzc$zza;->zzJ(Ljava/util/List;)V

    return-void
.end method
