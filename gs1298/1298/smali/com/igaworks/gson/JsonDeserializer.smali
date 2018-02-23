.class public interface abstract Lcom/igaworks/gson/JsonDeserializer;
.super Ljava/lang/Object;
.source "JsonDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract deserialize(Lcom/igaworks/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/igaworks/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lcom/igaworks/gson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/igaworks/gson/JsonParseException;
        }
    .end annotation
.end method
