.class Lcom/google/android/gms/internal/zzct$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqi$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzct;-><init>(Lcom/google/android/gms/internal/zzcq;Lcom/google/android/gms/internal/zzja;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqi$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzjb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzwF:Lcom/google/android/gms/internal/zzct;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzct;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzct$1;->zzwF:Lcom/google/android/gms/internal/zzct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzjb;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzct$1;->zzwF:Lcom/google/android/gms/internal/zzct;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzct;->zza(Lcom/google/android/gms/internal/zzct;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzct$1;->zzwF:Lcom/google/android/gms/internal/zzct;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzct;->zzc(Lcom/google/android/gms/internal/zzjb;)V

    return-void
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzjb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzct$1;->zzb(Lcom/google/android/gms/internal/zzjb;)V

    return-void
.end method
