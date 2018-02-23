.class Lcom/google/android/gms/internal/zziz$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zziz;->zzam(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzIU:Ljava/lang/String;

.field final synthetic zzIZ:Lcom/google/android/gms/internal/zziz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zziz;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zziz$5;->zzIZ:Lcom/google/android/gms/internal/zziz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zziz$5;->zzIU:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz$5;->zzIZ:Lcom/google/android/gms/internal/zziz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zziz;->zza(Lcom/google/android/gms/internal/zziz;)Lcom/google/android/gms/internal/zzqp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zziz$5;->zzIU:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzqp;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
