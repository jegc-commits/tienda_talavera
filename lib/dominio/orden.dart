import 'direccion.dart';

class LineaOrden {
  final String productoId;
  final String nombre;
  final int cantidad;
  final int precioCentavos;
  const LineaOrden(this.productoId, this.nombre, this.cantidad, this.precioCentavos);
  int get importe => cantidad * precioCentavos;
}

class Orden {
  final String id;
  final String usuarioId;
  final DateTime fecha;
  final List<LineaOrden> lineas;
  final int subtotal;
  final int descuento;
  final int envio;
  final int total;
  final Direccion direccion;
  final String tarjetaUltimos4;
  final String referenciaPago;

  const Orden({
    required this.id,
    required this.usuarioId,
    required this.fecha,
    required this.lineas,
    required this.subtotal,
    required this.descuento,
    required this.envio,
    required this.total,
    required this.direccion,
    required this.tarjetaUltimos4,
    required this.referenciaPago,
  });
}
