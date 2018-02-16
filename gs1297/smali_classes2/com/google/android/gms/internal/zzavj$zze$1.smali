.class Lcom/google/android/gms/internal/zzavj$zze$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaaz$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzavj$zze;->onConnectionRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzaaz$zzc",
        "<",
        "Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbwW:Ljava/lang/String;

.field final synthetic zzbwX:[B

.field final synthetic zzbxa:Ljava/lang/String;

.field final synthetic zzbxb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzavj$zze;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzavj$zze$1;->zzbwW:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzavj$zze$1;->zzbxa:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzavj$zze$1;->zzbxb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzavj$zze$1;->zzbwX:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavj$zze$1;->zzbwW:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavj$zze$1;->zzbxa:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavj$zze$1;->zzbxb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzavj$zze$1;->zzbwX:[B

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;->onConnectionRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzavj$zze$1;->zza(Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;)V

    return-void
.end method

.method public zzvy()V
    .locals 0

    return-void
.end method
