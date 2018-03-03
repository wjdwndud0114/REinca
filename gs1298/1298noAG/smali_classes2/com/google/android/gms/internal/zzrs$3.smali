.class Lcom/google/android/gms/internal/zzrs$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzrs;->zza(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzacH:Lcom/google/android/gms/internal/zzrs;

.field final synthetic zzacJ:Ljava/lang/String;

.field final synthetic zzacK:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrs;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrs$3;->zzacH:Lcom/google/android/gms/internal/zzrs;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrs$3;->zzacJ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzrs$3;->zzacK:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrs$3;->zzacH:Lcom/google/android/gms/internal/zzrs;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrs;->zza(Lcom/google/android/gms/internal/zzrs;)Lcom/google/android/gms/internal/zzsc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrs$3;->zzacJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsc;->zzbW(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrs$3;->zzacK:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrs$3;->zzacK:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
