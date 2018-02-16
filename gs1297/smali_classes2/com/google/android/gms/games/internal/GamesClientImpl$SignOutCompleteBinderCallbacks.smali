.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SignOutCompleteBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SignOutCompleteBinderCallbacks"
.end annotation


# instance fields
.field private final zzaFq:Lcom/google/android/gms/internal/zzzv$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzzv$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzv$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SignOutCompleteBinderCallbacks;->zzaFq:Lcom/google/android/gms/internal/zzzv$zzb;

    return-void
.end method


# virtual methods
.method public zzDW()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/games/GamesStatusCodes;->zzib(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SignOutCompleteBinderCallbacks;->zzaFq:Lcom/google/android/gms/internal/zzzv$zzb;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzzv$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
