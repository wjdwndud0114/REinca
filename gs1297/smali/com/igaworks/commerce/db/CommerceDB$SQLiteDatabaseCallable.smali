.class public interface abstract Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;
.super Ljava/lang/Object;
.source "CommerceDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/commerce/db/CommerceDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "SQLiteDatabaseCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;",
            ")TT;"
        }
    .end annotation
.end method
