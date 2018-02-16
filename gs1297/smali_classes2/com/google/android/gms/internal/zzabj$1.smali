.class Lcom/google/android/gms/internal/zzabj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzabj;->zzb(Lcom/google/android/gms/internal/zzayb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaAi:Lcom/google/android/gms/internal/zzayb;

.field final synthetic zzaBK:Lcom/google/android/gms/internal/zzabj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzabj;Lcom/google/android/gms/internal/zzayb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabj$1;->zzaBK:Lcom/google/android/gms/internal/zzabj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabj$1;->zzaAi:Lcom/google/android/gms/internal/zzayb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabj$1;->zzaBK:Lcom/google/android/gms/internal/zzabj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabj$1;->zzaAi:Lcom/google/android/gms/internal/zzayb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzabj;->zza(Lcom/google/android/gms/internal/zzabj;Lcom/google/android/gms/internal/zzayb;)V

    return-void
.end method
