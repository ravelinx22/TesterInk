.class final Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;
.super Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartPointCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# direct methods
.method public varargs constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartPointCollection;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;-><init>(Lcom/artfulbits/aiCharts/Base/ChartPointCollection;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartPoint;
    .locals 14

    instance-of v0, p1, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_9

    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;->b:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [D

    const/4 v5, 0x0

    move-wide v7, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;->a:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_1

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    goto/16 :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "element\'s value is incorrect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/lang/Exception;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "element\'s value is incorrect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw v0

    :cond_1
    move v10, v6

    const/4 v6, 0x0

    :goto_1
    iget-object v12, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;->b:[Ljava/lang/String;

    array-length v12, v12

    if-ge v6, v12, :cond_4

    iget-object v12, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;->b:[Ljava/lang/String;

    aget-object v12, v12, v6

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    if-eqz v10, :cond_2

    :try_start_1
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    aput-wide v12, v4, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v10, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v3, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "element\'s value is incorrect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    new-instance v0, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;->b:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "element\'s value is incorrect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw v0

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    move v6, v10

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v6, :cond_6

    new-instance p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-direct {p1, v7, v8, v4}, Lcom/artfulbits/aiCharts/Base/ChartPoint;-><init>(D[D)V

    return-object p1

    :cond_6
    if-nez v3, :cond_7

    if-eqz v6, :cond_9

    :cond_7
    new-instance v0, Lcom/artfulbits/aiCharts/Exceptions/XmlElementAttributeNotFoundException;

    if-eqz v3, :cond_8

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;->a:Ljava/lang/String;

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;->b:[Ljava/lang/String;

    aget-object v1, v1, v5

    :goto_4
    const-string v2, "Child node not found"

    invoke-direct {v0, v2, p1, v1}, Lcom/artfulbits/aiCharts/Exceptions/XmlElementAttributeNotFoundException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic bind(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;->a(Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object p1

    return-object p1
.end method
