.class public interface abstract Lcom/google/android/gms/plus/Account;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract clearDefaultAccount(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAccountName(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.GET_ACCOUNTS"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract revokeAccessAndDisconnect(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
