.class Lcom/igaworks/impl/CommonFrameworkImpl$10;
.super Ljava/lang/Object;
.source "CommonFrameworkImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/impl/CommonFrameworkImpl;->setReferralUrlForFacebook(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$deeplinkStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/impl/CommonFrameworkImpl;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/impl/CommonFrameworkImpl;

    .prologue
    .line 1750
    iput-object p1, p0, Lcom/igaworks/impl/CommonFrameworkImpl$10;->this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

    iput-object p2, p0, Lcom/igaworks/impl/CommonFrameworkImpl$10;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/impl/CommonFrameworkImpl$10;->val$deeplinkStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    .line 1754
    const/16 v29, 0x1

    .line 1755
    .local v29, "sentDeeplink":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/impl/CommonFrameworkImpl$10;->val$context:Landroid/content/Context;

    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setReferralUrl: deeplinkStr >> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/igaworks/impl/CommonFrameworkImpl$10;->val$deeplinkStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-static {v3, v5, v6, v7, v0}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1756
    const/16 v24, 0x0

    .line 1760
    .local v24, "iUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/impl/CommonFrameworkImpl$10;->val$deeplinkStr:Ljava/lang/String;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/impl/CommonFrameworkImpl$10;->val$deeplinkStr:Ljava/lang/String;

    const-string v5, "ref.ad-brix.com/v1/referrallink"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/impl/CommonFrameworkImpl$10;->val$deeplinkStr:Ljava/lang/String;

    const-string v5, "ref.ad-brix.com/adbrix/qa/referrallink"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/impl/CommonFrameworkImpl$10;->val$deeplinkStr:Ljava/lang/String;

    const-string v5, "Deeplink=true"

    .line 1761
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/impl/CommonFrameworkImpl$10;->val$deeplinkStr:Ljava/lang/String;

    const-string v5, "ck="

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    move-result v3

    if-eqz v3, :cond_6

    .line 1762
    const/16 v29, 0x0

    .line 1764
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/impl/CommonFrameworkImpl$10;->val$deeplinkStr:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    .line 1765
    .local v33, "targetUri":Landroid/net/Uri;
    const-string v3, "ck"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1766
    .local v4, "conversionKey":Ljava/lang/String;
    const-string v28, ""

    .line 1767
    .local v28, "sck":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/impl/CommonFrameworkImpl$10;->val$deeplinkStr:Ljava/lang/String;

    const-string v5, "sub_referral="

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1768
    const-string v3, "sub_referral"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1769
    :cond_1
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 1770
    .local v22, "fakeParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "ck"

    move-object/from16 v0, v22

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    if-eqz v28, :cond_2

    const-string v3, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "sub_referral"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    :cond_2
    const-string v3, "isFacebookCpi"

    const-string v5, "true"

    move-object/from16 v0, v22

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    const-string v3, "http://igaworks.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 1774
    .local v10, "b":Landroid/net/Uri$Builder;
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 1775
    .local v21, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1779
    .end local v4    # "conversionKey":Ljava/lang/String;
    .end local v10    # "b":Landroid/net/Uri$Builder;
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "fakeParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v28    # "sck":Ljava/lang/String;
    .end local v33    # "targetUri":Landroid/net/Uri;
    :catch_0
    move-exception v20

    .line 1780
    .local v20, "e_url":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "IGAW_QA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setReferralUrl >> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    const/16 v24, 0x0

    .line 1791
    .end local v20    # "e_url":Ljava/lang/Exception;
    :goto_1
    if-eqz v24, :cond_4

    .line 1793
    const/4 v4, -0x1

    .line 1795
    .local v4, "conversionKey":I
    const/4 v13, 0x0

    .line 1797
    .local v13, "commerceClickID":Ljava/lang/String;
    const/16 v25, 0x0

    .line 1798
    .local v25, "igaw_deeplink_cvr":Ljava/lang/Boolean;
    const/16 v26, 0x0

    .line 1799
    .local v26, "isFacebookCpi":Ljava/lang/Boolean;
    const-wide/16 v30, -0x1

    .line 1800
    .local v30, "session_no":J
    const-string v32, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    .line 1802
    .local v32, "sub_conversion_key":Ljava/lang/String;
    :try_start_3
    const-string v3, "ck"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v4

    .line 1808
    :goto_2
    :try_start_4
    const-string v3, "cid"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v13

    .line 1813
    :goto_3
    :try_start_5
    const-string v3, "igaw_deeplink_cvr"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v25

    .line 1818
    :goto_4
    :try_start_6
    const-string v3, "isFacebookCpi"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v26

    .line 1823
    :goto_5
    :try_start_7
    const-string v3, "sn"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-result-wide v30

    .line 1828
    :goto_6
    :try_start_8
    const-string v3, "sub_referral"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    move-result-object v32

    .line 1833
    :goto_7
    if-ltz v4, :cond_3

    if-eqz v26, :cond_3

    :try_start_9
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1834
    :cond_3
    const-string v3, "IGAW_QA"

    const-string v5, "setReferralUrl >> invalid parameters"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 1911
    .end local v4    # "conversionKey":I
    .end local v13    # "commerceClickID":Ljava/lang/String;
    .end local v24    # "iUri":Landroid/net/Uri;
    .end local v25    # "igaw_deeplink_cvr":Ljava/lang/Boolean;
    .end local v26    # "isFacebookCpi":Ljava/lang/Boolean;
    .end local v30    # "session_no":J
    .end local v32    # "sub_conversion_key":Ljava/lang/String;
    :cond_4
    :goto_8
    return-void

    .line 1777
    .local v4, "conversionKey":Ljava/lang/String;
    .restart local v10    # "b":Landroid/net/Uri$Builder;
    .restart local v22    # "fakeParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "iUri":Landroid/net/Uri;
    .restart local v28    # "sck":Ljava/lang/String;
    .restart local v33    # "targetUri":Landroid/net/Uri;
    :cond_5
    :try_start_a
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1778
    .local v23, "fakeUrl":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    move-result-object v24

    goto :goto_1

    .line 1785
    .end local v4    # "conversionKey":Ljava/lang/String;
    .end local v10    # "b":Landroid/net/Uri$Builder;
    .end local v22    # "fakeParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "fakeUrl":Ljava/lang/String;
    .end local v28    # "sck":Ljava/lang/String;
    .end local v33    # "targetUri":Landroid/net/Uri;
    :cond_6
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://igaworks.com"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/impl/CommonFrameworkImpl$10;->val$deeplinkStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/impl/CommonFrameworkImpl$10;->val$deeplinkStr:Ljava/lang/String;

    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/igaworks/impl/CommonFrameworkImpl$10;->val$deeplinkStr:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    move-result-object v24

    goto/16 :goto_1

    .line 1786
    :catch_1
    move-exception v14

    .line 1787
    .local v14, "e":Ljava/lang/Exception;
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 1803
    .end local v14    # "e":Ljava/lang/Exception;
    .local v4, "conversionKey":I
    .restart local v13    # "commerceClickID":Ljava/lang/String;
    .restart local v25    # "igaw_deeplink_cvr":Ljava/lang/Boolean;
    .restart local v26    # "isFacebookCpi":Ljava/lang/Boolean;
    .restart local v30    # "session_no":J
    .restart local v32    # "sub_conversion_key":Ljava/lang/String;
    :catch_2
    move-exception v15

    .line 1804
    .local v15, "e1":Ljava/lang/Exception;
    const/4 v4, -0x1

    goto/16 :goto_2

    .line 1809
    .end local v15    # "e1":Ljava/lang/Exception;
    :catch_3
    move-exception v16

    .line 1810
    .local v16, "e2":Ljava/lang/Exception;
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 1814
    .end local v16    # "e2":Ljava/lang/Exception;
    :catch_4
    move-exception v17

    .line 1815
    .local v17, "e3":Ljava/lang/Exception;
    const/16 v25, 0x0

    goto/16 :goto_4

    .line 1819
    .end local v17    # "e3":Ljava/lang/Exception;
    :catch_5
    move-exception v17

    .line 1820
    .restart local v17    # "e3":Ljava/lang/Exception;
    const/16 v26, 0x0

    goto :goto_5

    .line 1824
    .end local v17    # "e3":Ljava/lang/Exception;
    :catch_6
    move-exception v18

    .line 1825
    .local v18, "e4":Ljava/lang/Exception;
    const-wide/16 v30, -0x1

    goto :goto_6

    .line 1829
    .end local v18    # "e4":Ljava/lang/Exception;
    :catch_7
    move-exception v19

    .line 1830
    .local v19, "e5":Ljava/lang/Exception;
    :try_start_c
    const-string v32, ""

    goto :goto_7

    .line 1839
    .end local v19    # "e5":Ljava/lang/Exception;
    :cond_7
    sget-object v3, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v3}, Lcom/igaworks/core/RequestParameter;->getAllowDuplicationConversions()Ljava/util/ArrayList;

    move-result-object v8

    .line 1840
    .local v8, "AllowDuplicationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1841
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 1842
    .local v27, "item":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    move-result v5

    if-eqz v5, :cond_8

    .line 1844
    :try_start_d
    const-string v5, ";"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 1845
    .local v11, "childCK":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1846
    .local v12, "ck":I
    sget-object v5, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v5, v12}, Lcom/igaworks/core/RequestParameter;->removeRetainedConversionCache(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_9

    .line 1847
    .end local v11    # "childCK":Ljava/lang/String;
    .end local v12    # "ck":I
    :catch_8
    move-exception v14

    .line 1848
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_9

    .line 1907
    .end local v4    # "conversionKey":I
    .end local v8    # "AllowDuplicationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "commerceClickID":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v24    # "iUri":Landroid/net/Uri;
    .end local v25    # "igaw_deeplink_cvr":Ljava/lang/Boolean;
    .end local v26    # "isFacebookCpi":Ljava/lang/Boolean;
    .end local v27    # "item":Ljava/lang/String;
    .end local v30    # "session_no":J
    .end local v32    # "sub_conversion_key":Ljava/lang/String;
    :catch_9
    move-exception v14

    .line 1908
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 1855
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v4    # "conversionKey":I
    .restart local v8    # "AllowDuplicationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "commerceClickID":Ljava/lang/String;
    .restart local v24    # "iUri":Landroid/net/Uri;
    .restart local v25    # "igaw_deeplink_cvr":Ljava/lang/Boolean;
    .restart local v26    # "isFacebookCpi":Ljava/lang/Boolean;
    .restart local v30    # "session_no":J
    .restart local v32    # "sub_conversion_key":Ljava/lang/String;
    :cond_9
    :try_start_f
    # getter for: Lcom/igaworks/impl/CommonFrameworkImpl;->TempProcessedConversionList:Ljava/util/List;
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->access$400()Ljava/util/List;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1856
    # getter for: Lcom/igaworks/impl/CommonFrameworkImpl;->TempProcessedConversionList:Ljava/util/List;
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->access$400()Ljava/util/List;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1861
    const-wide/16 v6, 0x1388

    invoke-static {v6, v7}, Lcom/igaworks/util/bolts_task/Task;->delay(J)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v3

    new-instance v5, Lcom/igaworks/impl/CommonFrameworkImpl$10$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/igaworks/impl/CommonFrameworkImpl$10$1;-><init>(Lcom/igaworks/impl/CommonFrameworkImpl$10;)V

    invoke-virtual {v3, v5}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    .line 1878
    :try_start_10
    const-string v3, "IGAW_QA"

    const-string v5, "setReferralUrl >> ck = %s; cid = %s; igaw_deeplink_cvr = %s ; session_no = %s, sub_conversion_key = %s, isFacebookCpi = %s "

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 1879
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v6, v7

    const/4 v7, 0x1

    aput-object v13, v6, v7

    const/4 v7, 0x2

    aput-object v25, v6, v7

    const/4 v7, 0x3

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    aput-object v34, v6, v7

    const/4 v7, 0x4

    aput-object v32, v6, v7

    const/4 v7, 0x5

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v6, v7

    .line 1878
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    sget-object v3, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v3}, Lcom/igaworks/core/RequestParameter;->getProcessedConversions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1882
    const-string v3, "IGAW_QA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setReferralUrl: Thirdparty conversion key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " counted by Igaworks."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    goto/16 :goto_8

    .line 1902
    :catch_a
    move-exception v3

    goto/16 :goto_8

    .line 1858
    :cond_a
    :try_start_11
    const-string v3, "IGAW_QA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setReferralUrl "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exists in cache >> Skip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    goto/16 :goto_8

    .line 1885
    :cond_b
    :try_start_12
    sget-object v3, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v3, v4}, Lcom/igaworks/core/RequestParameter;->setProcessedConversions(I)V

    .line 1888
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 1889
    .local v9, "applink_deeplink_info":Lorg/json/JSONObject;
    const-string v3, "session_no"

    move-wide/from16 v0, v30

    invoke-virtual {v9, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1890
    const-string v3, "conversion_key"

    invoke-virtual {v9, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1891
    if-eqz v29, :cond_c

    .line 1893
    const-string v3, "deeplink_uri"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/impl/CommonFrameworkImpl$10;->val$deeplinkStr:Ljava/lang/String;

    invoke-virtual {v9, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1898
    :goto_a
    const-string v3, "sub_conversion_key"

    move-object/from16 v0, v32

    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1899
    new-instance v2, Lcom/igaworks/model/DeeplinkReEngagementConversion;

    const/4 v3, -0x1

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/igaworks/model/DeeplinkReEngagementConversion;-><init>(IILjava/lang/String;II)V

    .line 1900
    .local v2, "alThirdpartyConversion":Lcom/igaworks/model/DeeplinkReEngagementConversion;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/impl/CommonFrameworkImpl$10;->this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/impl/CommonFrameworkImpl$10;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v5}, Lcom/igaworks/impl/CommonFrameworkImpl;->getHttpManager(Landroid/content/Context;)Lcom/igaworks/net/CommonHttpManager;

    move-result-object v3

    sget-object v5, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/impl/CommonFrameworkImpl$10;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v5, v6, v2}, Lcom/igaworks/net/CommonHttpManager;->ThirdPartyConversion(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V

    goto/16 :goto_8

    .line 1895
    .end local v2    # "alThirdpartyConversion":Lcom/igaworks/model/DeeplinkReEngagementConversion;
    :cond_c
    const-string v3, "tracking_url"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/impl/CommonFrameworkImpl$10;->val$deeplinkStr:Ljava/lang/String;

    invoke-virtual {v9, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_a
.end method
