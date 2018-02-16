.class Lcom/google/android/gms/internal/zzrs$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzrs;->zzV(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzacH:Lcom/google/android/gms/internal/zzrs;

.field final synthetic zzacI:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrs;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrs$2;->zzacH:Lcom/google/android/gms/internal/zzrs;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzrs$2;->zzacI:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrs$2;->zzacH:Lcom/google/android/gms/internal/zzrs;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrs;->zza(Lcom/google/android/gms/internal/zzrs;)Lcom/google/android/gms/internal/zzsc;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzrs$2;->zzacI:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsc;->zzV(Z)V

    return-void
.end method
