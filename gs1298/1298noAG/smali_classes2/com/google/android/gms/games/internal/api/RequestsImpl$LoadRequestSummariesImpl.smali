.class abstract Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestSummariesImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/RequestsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LoadRequestSummariesImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/request/Requests$LoadRequestSummariesResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public zzaO(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/request/Requests$LoadRequestSummariesResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestSummariesImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestSummariesImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestSummariesImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestSummariesImpl;->zzaO(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/request/Requests$LoadRequestSummariesResult;

    move-result-object v0

    return-object v0
.end method
